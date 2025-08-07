import peewee as pw
from .database import db
import datetime

class BaseModel(pw.Model):
    class Meta:
        database = db

class Exercise(BaseModel):
    name = pw.CharField(max_length=100, null=False)
    type = pw.CharField(max_length=50, null=False)
    difficulty = pw.IntegerField(constraints=[pw.Check('difficulty IN (1,2,3,4)')])
    compound_score = pw.IntegerField(constraints=[pw.Check('compound_score >= 0 AND compound_score <= 10')])
    metabolic_score = pw.IntegerField(constraints=[pw.Check('metabolic_score >= 0 AND metabolic_score <= 10')])
    equipment_required = pw.TextField(null=True)
    instructions = pw.TextField(null=True)
    safety_notes = pw.TextField(null=True)
    created_at = pw.TimestampField(default=datetime.datetime.now)
    updated_at = pw.TimestampField()

    # Muscle activation scores
    chest = pw.IntegerField(default=0)
    back = pw.IntegerField(default=0)
    shoulders = pw.IntegerField(default=0)
    biceps = pw.IntegerField(default=0)
    triceps = pw.IntegerField(default=0)
    quads = pw.IntegerField(default=0)
    hamstrings = pw.IntegerField(default=0)
    glutes = pw.IntegerField(default=0)
    calves = pw.IntegerField(default=0)
    core = pw.IntegerField(default=0)
    forearms = pw.IntegerField(default=0)
    traps = pw.IntegerField(default=0)

    def save(self, *args, **kwargs):
        self.updated_at = datetime.datetime.now()
        return super(Exercise, self).save(*args, **kwargs)

class User(BaseModel):
    name = pw.CharField(max_length=100, null=True)
    email = pw.CharField(max_length=255, null=True)
    goal = pw.CharField(max_length=50, constraints=[pw.Check("goal IN ('strength', 'hypertrophy', 'endurance', 'general')")])
    experience_level = pw.IntegerField(constraints=[pw.Check('experience_level IN (1,2,3,4)')])
    available_time = pw.IntegerField(null=True)  # minutes
    preferred_split = pw.CharField(max_length=50, null=True)
    created_at = pw.TimestampField(default=datetime.datetime.now)

class Workout(BaseModel):
    user = pw.ForeignKeyField(User, backref='workouts')
    name = pw.CharField(max_length=100, null=False)
    date = pw.DateField(null=True)
    estimated_duration = pw.IntegerField(null=True)  # minutes
    actual_duration = pw.IntegerField(null=True)  # minutes
    power_score = pw.IntegerField(null=True)
    metabolic_score = pw.IntegerField(null=True)
    balance_score = pw.IntegerField(null=True)
    fatigue_index = pw.IntegerField(null=True)
    notes = pw.TextField(null=True)
    completed = pw.BooleanField(default=False)
    created_at = pw.TimestampField(default=datetime.datetime.now)

class WorkoutExercise(BaseModel):
    workout = pw.ForeignKeyField(Workout, backref='exercises', on_delete='CASCADE')
    exercise = pw.ForeignKeyField(Exercise)
    order_index = pw.IntegerField()
    sets = pw.IntegerField(null=False)
    reps = pw.IntegerField(null=True)
    weight = pw.FloatField(null=True)
    rpe = pw.IntegerField(constraints=[pw.Check('rpe >= 1 AND rpe <= 10')], null=True)
    rest_seconds = pw.IntegerField(null=True)
    is_superset = pw.BooleanField(default=False)
    superset_group = pw.IntegerField(null=True)
    notes = pw.TextField(null=True)

class WorkoutTemplate(BaseModel):
    name = pw.CharField(max_length=100, null=False)
    description = pw.TextField(null=True)
    target_goal = pw.CharField(max_length=50, null=True)
    difficulty = pw.IntegerField(null=True)
    estimated_duration = pw.IntegerField(null=True)
    popularity_score = pw.IntegerField(default=0)
    created_at = pw.TimestampField(default=datetime.datetime.now)

class ProgressTracking(BaseModel):
    user = pw.ForeignKeyField(User, backref='progress')
    exercise = pw.ForeignKeyField(Exercise)
    date = pw.DateField()
    max_weight = pw.FloatField(null=True)
    max_reps = pw.IntegerField(null=True)
    volume_load = pw.FloatField(null=True)
    notes = pw.TextField(null=True)

class UserEquipment(BaseModel):
    user = pw.ForeignKeyField(User, backref='equipment')
    equipment_name = pw.CharField(max_length=100)
    available = pw.BooleanField(default=True)

def create_tables():
    with db:
        db.create_tables([
            Exercise,
            User,
            Workout,
            WorkoutExercise,
            WorkoutTemplate,
            ProgressTracking,
            UserEquipment,
        ])
