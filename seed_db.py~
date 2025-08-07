from ironmatrix.data.database import db
from ironmatrix.data.models import Exercise

def seed_database():
    exercises = [
        # Barbell
        {'name': 'Barbell Bench Press', 'type': 'Barbell', 'difficulty': 2, 'compound_score': 9, 'metabolic_score': 6, 'chest': 10, 'shoulders': 7, 'triceps': 8},
        {'name': 'Barbell Squat', 'type': 'Barbell', 'difficulty': 3, 'compound_score': 10, 'metabolic_score': 8, 'quads': 10, 'glutes': 8, 'core': 6},
        {'name': 'Barbell Deadlift', 'type': 'Barbell', 'difficulty': 3, 'compound_score': 10, 'metabolic_score': 9, 'back': 9, 'hamstrings': 8, 'glutes': 7, 'traps': 7},
        
        # Dumbbell
        {'name': 'Dumbbell Bicep Curl', 'type': 'Dumbbell', 'difficulty': 1, 'compound_score': 2, 'metabolic_score': 3, 'biceps': 10},
        {'name': 'Dumbbell Shoulder Press', 'type': 'Dumbbell', 'difficulty': 2, 'compound_score': 7, 'metabolic_score': 5, 'shoulders': 10, 'triceps': 6},
        {'name': 'Dumbbell Lunges', 'type': 'Dumbbell', 'difficulty': 2, 'compound_score': 6, 'metabolic_score': 7, 'quads': 8, 'glutes': 7},

        # Bodyweight
        {'name': 'Push-up', 'type': 'Bodyweight', 'difficulty': 1, 'compound_score': 6, 'metabolic_score': 5, 'chest': 8, 'shoulders': 6, 'triceps': 7, 'core': 5},
        {'name': 'Pull-up', 'type': 'Bodyweight', 'difficulty': 2, 'compound_score': 8, 'metabolic_score': 6, 'back': 10, 'biceps': 8, 'forearms': 7},
        {'name': 'Air Squat', 'type': 'Bodyweight', 'difficulty': 1, 'compound_score': 5, 'metabolic_score': 6, 'quads': 7, 'glutes': 6},
    ]

    db.connect()
    for ex_data in exercises:
        Exercise.create(**ex_data)
    db.close()

if __name__ == "__main__":
    seed_database()
    print("Database seeded with sample exercises.")
