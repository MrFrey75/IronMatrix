
CREATE TABLE IF NOT EXISTS exercises (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Exercise TEXT,
    Exercise_Type TEXT,
    Compound_Score INTEGER,
    Metabolic_Score INTEGER,
    Chest INTEGER,
    Back INTEGER,
    Shoulders INTEGER,
    Biceps INTEGER,
    Triceps INTEGER,
    Quads INTEGER,
    Hamstrings INTEGER,
    Glutes INTEGER,
    Calves INTEGER,
    Core INTEGER
);

INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Barbell Bench Press', 'Barbell', 6, 3, 10, 1, 4, 1, 6, 0, 0, 0, 0, 3);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Incline Bench Press', 'Barbell/Dumbbell', 6, 3, 9, 1, 6, 1, 6, 0, 0, 0, 0, 3);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Dumbbell Flyes', 'Dumbbell', 2, 2, 10, 0, 2, 0, 1, 0, 0, 0, 0, 2);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Push-ups', 'Bodyweight', 7, 5, 8, 1, 4, 1, 6, 0, 0, 0, 0, 4);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Pull-ups/Chin-ups', 'Bodyweight', 8, 6, 2, 9, 4, 7, 2, 0, 0, 0, 0, 5);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Barbell Rows', 'Barbell', 8, 4, 2, 9, 6, 6, 1, 0, 0, 0, 0, 5);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Lat Pulldowns', 'Cable/Machine', 6, 3, 1, 9, 4, 6, 1, 0, 0, 0, 0, 4);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Inverted Rows', 'Bodyweight', 7, 5, 2, 8, 5, 5, 2, 0, 0, 0, 0, 4);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Superman', 'Bodyweight', 8, 3, 1, 7, 3, 1, 1, 1, 6, 6, 0, 6);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Overhead Press', 'Barbell/Dumbbell', 6, 4, 3, 3, 10, 1, 5, 1, 0, 2, 1, 6);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Lateral Raises', 'Dumbbell', 2, 2, 1, 1, 9, 0, 1, 0, 0, 0, 0, 2);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Handstand Push-ups', 'Bodyweight', 7, 7, 4, 2, 9, 1, 6, 0, 0, 0, 0, 6);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Rear Delt Flyes', 'Dumbbell/Cable', 3, 2, 1, 4, 8, 1, 1, 0, 0, 0, 0, 2);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Pike Push-ups', 'Bodyweight', 5, 5, 3, 1, 8, 1, 5, 0, 0, 0, 0, 4);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Bicep Curls', 'Dumbbell/Barbell', 1, 1, 1, 2, 1, 10, 0, 0, 0, 0, 0, 2);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Hammer Curls', 'Dumbbell', 1, 1, 1, 2, 2, 8, 1, 0, 0, 0, 0, 2);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Tricep Extensions', 'Dumbbell/Cable', 1, 1, 1, 1, 2, 0, 10, 0, 0, 0, 0, 2);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Close-Grip Bench Press', 'Barbell', 4, 3, 6, 1, 3, 1, 9, 0, 0, 0, 0, 3);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Dips', 'Bodyweight', 6, 5, 7, 1, 4, 1, 8, 0, 0, 0, 0, 3);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Barbell Squats', 'Barbell', 9, 6, 0, 4, 2, 1, 1, 10, 4, 8, 2, 6);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Leg Extensions', 'Machine', 1, 2, 0, 0, 0, 0, 0, 10, 0, 1, 0, 1);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Front Squats', 'Barbell', 8, 6, 0, 3, 3, 1, 1, 9, 3, 7, 2, 8);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Leg Press', 'Machine', 5, 3, 0, 1, 0, 0, 0, 9, 3, 7, 1, 2);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Pistol Squats', 'Bodyweight', 8, 7, 0, 2, 1, 1, 1, 9, 4, 7, 3, 7);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Wall Sits', 'Bodyweight', 5, 4, 0, 1, 0, 0, 0, 8, 3, 6, 1, 4);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Jump Squats', 'Bodyweight', 8, 8, 0, 2, 2, 1, 1, 8, 4, 7, 5, 5);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Romanian Deadlifts', 'Barbell/Dumbbell', 9, 5, 0, 6, 2, 2, 1, 2, 10, 8, 1, 6);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Leg Curls', 'Machine', 1, 2, 0, 0, 0, 0, 0, 1, 10, 2, 0, 1);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Deadlifts', 'Barbell', 10, 7, 1, 8, 3, 3, 2, 6, 9, 8, 2, 7);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Hip Thrusts', 'Bodyweight/Barbell', 5, 3, 0, 1, 0, 0, 0, 2, 6, 10, 0, 4);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Glute Bridges', 'Bodyweight', 4, 2, 0, 1, 0, 0, 0, 1, 5, 9, 0, 4);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Lunges', 'Bodyweight/Dumbbell', 8, 6, 0, 2, 1, 0, 0, 8, 6, 9, 1, 5);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Step-ups', 'Bodyweight/Dumbbell', 7, 6, 0, 1, 1, 0, 0, 7, 5, 8, 4, 3);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Calf Raises', 'Bodyweight/Machine', 1, 2, 0, 0, 0, 0, 0, 1, 1, 2, 10, 1);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Planks', 'Bodyweight', 3, 3, 1, 2, 2, 1, 2, 1, 1, 3, 0, 10);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Crunches', 'Bodyweight', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Russian Twists', 'Bodyweight', 2, 4, 0, 1, 1, 1, 1, 1, 0, 1, 0, 9);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Side Planks', 'Bodyweight', 3, 3, 1, 2, 2, 1, 2, 1, 1, 3, 0, 9);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Mountain Climbers', 'Bodyweight', 7, 9, 2, 1, 3, 1, 3, 5, 2, 4, 2, 8);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Bear Crawls', 'Bodyweight', 8, 8, 3, 3, 4, 2, 4, 4, 2, 4, 1, 8);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Burpees', 'Bodyweight', 9, 10, 5, 2, 5, 2, 5, 6, 3, 5, 3, 7);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Dumbbell Chest Press', 'Dumbbell', 6, 3, 10, 1, 3, 1, 6, 0, 0, 0, 0, 3);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Dumbbell Pullovers', 'Dumbbell', 4, 3, 8, 6, 2, 1, 2, 0, 0, 0, 0, 4);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Dumbbell Shoulder Press', 'Dumbbell', 5, 3, 2, 2, 9, 1, 5, 0, 0, 1, 0, 5);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Dumbbell Shrugs', 'Dumbbell', 2, 1, 1, 8, 7, 1, 1, 0, 0, 0, 0, 2);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Single-Arm Dumbbell Rows', 'Dumbbell', 7, 4, 1, 9, 5, 6, 2, 0, 0, 0, 0, 5);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Dumbbell Deadlifts', 'Dumbbell', 9, 6, 1, 7, 2, 3, 2, 5, 8, 7, 2, 6);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Dumbbell Thrusters', 'Dumbbell', 8, 9, 3, 4, 8, 2, 6, 6, 4, 6, 2, 6);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Goblet Squats', 'Dumbbell', 6, 5, 1, 3, 3, 2, 2, 9, 3, 7, 1, 5);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Bulgarian Split Squats', 'Dumbbell', 7, 6, 0, 2, 1, 1, 1, 8, 5, 8, 2, 5);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Dumbbell Arnold Press', 'Dumbbell', 6, 4, 2, 3, 9, 2, 5, 1, 0, 1, 0, 5);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Dumbbell Upright Rows', 'Dumbbell', 5, 3, 2, 6, 7, 5, 2, 0, 0, 0, 0, 3);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Dumbbell Tricep Kickbacks', 'Dumbbell', 2, 1, 1, 2, 3, 1, 9, 0, 0, 0, 0, 2);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Dumbbell Skull Crushers', 'Dumbbell', 3, 2, 2, 1, 3, 1, 9, 0, 0, 0, 0, 3);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Farmers Walk', 'Dumbbell', 6, 7, 2, 4, 4, 4, 4, 3, 2, 4, 6, 6);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Dumbbell Renegade Rows', 'Dumbbell', 8, 8, 4, 8, 4, 5, 4, 0, 0, 2, 0, 8);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Turkish Get-ups', 'Dumbbell', 9, 8, 3, 4, 6, 3, 4, 5, 3, 5, 2, 8);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Dumbbell Bent-over Rows', 'Dumbbell', 7, 4, 2, 8, 5, 6, 2, 0, 0, 0, 0, 5);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Cable Chest Fly', 'Cable', 3, 3, 9, 0, 2, 0, 2, 0, 0, 0, 0, 2);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Cable Crossover', 'Cable', 4, 4, 9, 0, 3, 0, 2, 0, 0, 0, 0, 2);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Cable Lateral Raise', 'Cable', 2, 2, 0, 0, 9, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Cable Face Pull', 'Cable', 5, 4, 0, 5, 7, 3, 2, 0, 0, 0, 0, 3);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Cable Triceps Pushdown', 'Cable', 2, 3, 0, 0, 1, 0, 10, 0, 0, 0, 0, 1);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Cable Bicep Curl', 'Cable', 2, 3, 0, 0, 1, 10, 0, 0, 0, 0, 0, 1);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Cable Rope Hammer Curl', 'Cable', 2, 3, 0, 0, 1, 9, 1, 0, 0, 0, 0, 1);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Cable Pull-through', 'Cable', 6, 5, 0, 2, 1, 0, 1, 2, 6, 10, 0, 4);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Cable Squat to Row', 'Cable', 8, 7, 0, 7, 5, 2, 3, 8, 4, 6, 1, 6);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Dips', 'Bodyweight', 7, 5, 3, 1, 5, 1, 8, 0, 0, 0, 0, 3);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Bodyweight Squats', 'Bodyweight', 5, 6, 0, 0, 1, 0, 1, 9, 2, 3, 1, 2);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Burpees', 'Bodyweight', 8, 10, 4, 3, 5, 2, 3, 6, 3, 3, 2, 6);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Mountain Climbers', 'Bodyweight', 5, 9, 1, 1, 3, 1, 1, 5, 2, 2, 1, 8);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Plank', 'Bodyweight', 2, 4, 0, 0, 2, 0, 0, 0, 0, 0, 0, 10);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Wall Sit', 'Bodyweight', 3, 6, 0, 0, 0, 0, 0, 8, 2, 2, 0, 4);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Barbell Deadlift', 'Barbell', 10, 6, 0, 9, 3, 2, 2, 6, 9, 9, 1, 6);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Barbell Front Squat', 'Barbell', 9, 6, 0, 1, 5, 1, 2, 10, 4, 5, 1, 5);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Clean and Press', 'Barbell', 10, 9, 3, 6, 9, 3, 4, 7, 6, 6, 2, 7);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Barbell Overhead Press', 'Barbell', 7, 4, 1, 0, 10, 1, 6, 0, 0, 0, 0, 3);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Kettlebell Swing', 'Kettlebell', 7, 8, 0, 2, 2, 0, 1, 3, 7, 10, 1, 5);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Trap Bar Deadlift', 'Barbell', 9, 6, 0, 8, 2, 1, 2, 8, 7, 9, 1, 5);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Atlas Stone Lift', 'Strongman', 10, 7, 4, 6, 5, 3, 5, 9, 8, 10, 2, 6);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Yoke Carry', 'Strongman', 9, 9, 1, 3, 4, 1, 3, 8, 7, 9, 2, 9);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Farmer's Walk', 'Strongman', 8, 9, 0, 4, 4, 2, 4, 6, 4, 5, 5, 8);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Log Press', 'Strongman', 8, 7, 3, 1, 9, 1, 7, 2, 1, 1, 0, 4);
INSERT INTO exercises (Exercise, Exercise Type, Compound Score, Metabolic Score, Chest, Back, Shoulders, Biceps, Triceps, Quads, Hamstrings, Glutes, Calves, Core) VALUES ('Tire Flip', 'Strongman', 10, 8, 4, 5, 5, 2, 3, 7, 6, 7, 2, 6);
