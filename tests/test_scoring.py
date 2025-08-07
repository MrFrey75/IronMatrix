import unittest
from peewee import *
from ironmatrix.data.models import Exercise, User, Workout, WorkoutExercise, ProgressTracking
from ironmatrix.logic.scoring import Scoring

MODELS = [Exercise, User, Workout, WorkoutExercise, ProgressTracking]

test_db = SqliteDatabase(':memory:')

class TestScoring(unittest.TestCase):
    def setUp(self):
        test_db.bind(MODELS, bind_refs=False, bind_backrefs=False)
        test_db.connect()
        test_db.create_tables(MODELS)
        self.seed_test_data()

    def tearDown(self):
        test_db.drop_tables(MODELS)
        test_db.close()

    def seed_test_data(self):
        self.user = User.create(name='Test User', goal='strength', experience_level=2)
        self.exercise1 = Exercise.create(name='Test Bench Press', type='Barbell', difficulty=2, compound_score=9, metabolic_score=6, chest=10, shoulders=7, triceps=8)
        self.exercise2 = Exercise.create(name='Test Squat', type='Barbell', difficulty=3, compound_score=10, metabolic_score=8, quads=10, glutes=8, core=6)
        self.workout = Workout.create(user=self.user, name='Test Workout', date='2025-01-01', actual_duration=60)
        self.wo_exercise1 = WorkoutExercise.create(workout=self.workout, exercise=self.exercise1, order_index=1, sets=3, reps=5, weight=100)
        self.wo_exercise2 = WorkoutExercise.create(workout=self.workout, exercise=self.exercise2, order_index=2, sets=4, reps=8, weight=150)

    def test_calculate_power_score(self):
        scoring = Scoring(self.workout)
        power_score = scoring.calculate_power_score()
        expected_score = ((9 * 3 * 5) + (10 * 4 * 8)) // 10
        self.assertEqual(power_score, expected_score)

    def test_calculate_metabolic_demand(self):
        scoring = Scoring(self.workout)
        metabolic_score = scoring.calculate_metabolic_demand()
        expected_score = ((6 * 3 * 5) + (8 * 4 * 8)) // 10
        self.assertEqual(metabolic_score, expected_score)

    def test_analyze_muscle_balance(self):
        scoring = Scoring(self.workout)
        balance_score = scoring.analyze_muscle_balance()
        self.assertGreater(balance_score, 0)

    def test_estimate_fatigue_load(self):
        scoring = Scoring(self.workout)
        fatigue_load = scoring.estimate_fatigue_load()
        expected_load = int(((3*5*100) + (4*8*150)) / 1000)
        self.assertEqual(fatigue_load, expected_load)

    def test_calculate_time_efficiency(self):
        scoring = Scoring(self.workout)
        time_efficiency = scoring.calculate_time_efficiency()
        power_score = ((9 * 3 * 5) + (10 * 4 * 8)) // 10
        metabolic_score = ((6 * 3 * 5) + (8 * 4 * 8)) // 10
        expected_efficiency = int((power_score + metabolic_score) / 60 * 100)
        self.assertEqual(time_efficiency, expected_efficiency)

    def test_analyze_progressive_overload(self):
        ProgressTracking.create(user=self.user, exercise=self.exercise1, date='2024-12-25', max_weight=90, max_reps=5)
        scoring = Scoring(self.workout)
        progressive_overload = scoring.analyze_progressive_overload(ProgressTracking.select())
        self.assertEqual(progressive_overload, 10)

if __name__ == '__main__':
    unittest.main()

