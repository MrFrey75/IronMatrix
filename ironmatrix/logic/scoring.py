from ironmatrix.data.models import Workout, WorkoutExercise, ProgressTracking

class Scoring:
    def __init__(self, workout):
        self.workout = workout

    def calculate_power_score(self):
        total_power_score = 0
        for wo_exercise in self.workout.exercises:
            total_power_score += wo_exercise.exercise.compound_score * wo_exercise.sets * wo_exercise.reps
        return min(total_power_score // 10, 100)

    def calculate_metabolic_demand(self):
        total_metabolic_score = 0
        for wo_exercise in self.workout.exercises:
            total_metabolic_score += wo_exercise.exercise.metabolic_score * wo_exercise.sets * wo_exercise.reps
        return min(total_metabolic_score // 10, 100)

    def analyze_muscle_balance(self):
        muscle_distribution = {
            'chest': 0, 'back': 0, 'shoulders': 0, 'biceps': 0, 'triceps': 0,
            'quads': 0, 'hamstrings': 0, 'glutes': 0, 'calves': 0, 'core': 0,
            'forearms': 0, 'traps': 0
        }
        for wo_exercise in self.workout.exercises:
            exercise = wo_exercise.exercise
            for muscle in muscle_distribution.keys():
                muscle_distribution[muscle] += getattr(exercise, muscle) * wo_exercise.sets
        
        total_work = sum(muscle_distribution.values())
        if total_work == 0:
            return 0
            
        # Calculate balance score as 100 - (std dev of distribution)
        import numpy as np
        scores = list(muscle_distribution.values())
        mean = np.mean(scores)
        std_dev = np.std(scores)
        
        return max(0, 100 - int(std_dev))

    def estimate_fatigue_load(self):
        # Fatigue is a function of total volume (sets * reps * weight)
        total_volume = 0
        for wo_exercise in self.workout.exercises:
            total_volume += wo_exercise.sets * wo_exercise.reps * (wo_exercise.weight or 20) # Use a default weight for bodyweight exercises
        
        return min(int(total_volume / 1000), 10)

    def calculate_time_efficiency(self):
        # Time efficiency is a ratio of total score to workout duration
        if not self.workout.actual_duration:
            return 0
        
        power_score = self.calculate_power_score()
        metabolic_score = self.calculate_metabolic_demand()
        
        total_score = power_score + metabolic_score
        
        return int(total_score / self.workout.actual_duration * 100)

    def analyze_progressive_overload(self, history):
        # Compare current workout to historical performance
        progression_score = 0
        
        for wo_exercise in self.workout.exercises:
            exercise_history = history.filter(exercise=wo_exercise.exercise).order_by(ProgressTracking.date.desc()).first()
            
            if exercise_history:
                if wo_exercise.weight > exercise_history.max_weight:
                    progression_score += 10
                if wo_exercise.reps > exercise_history.max_reps:
                    progression_score += 5
        
        return min(progression_score, 100)

    def calculate_advanced_scores(self, workout, user_profile, history):
        scores = {
            'power': self.calculate_power_score(workout),
            'metabolic': self.calculate_metabolic_demand(workout),
            'muscle_balance': self.analyze_muscle_balance(workout),
            'fatigue_index': self.estimate_fatigue_load(workout),
            'efficiency_rating': self.calculate_time_efficiency(workout),
            'progression_score': self.analyze_progressive_overload(workout, history)
        }
        
        # Personalization based on user goals
        if user_profile.goal == 'strength':
            scores['weighted_total'] = (scores['power'] * 0.4 + 
                                       scores['muscle_balance'] * 0.3 +
                                       scores['efficiency_rating'] * 0.3)
        
        return scores
