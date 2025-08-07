from kivymd.app import MDApp
from kivy.uix.screenmanager import ScreenManager, Screen
from kivymd.uix.boxlayout import MDBoxLayout
from kivymd.uix.button import MDRaisedButton, MDFloatingActionButton
from kivymd.uix.label import MDLabel
from kivymd.uix.scrollview import MDScrollView
from kivymd.uix.list import OneLineListItem, TwoLineListItem
from kivymd.uix.toolbar import MDTopAppBar
from kivymd.uix.textfield import MDTextField

from ironmatrix.data.models import Exercise, Workout, WorkoutExercise, User
import datetime

class HomeScreen(Screen):
    def __init__(self, **kwargs):
        super(HomeScreen, self).__init__(**kwargs)
        layout = MDBoxLayout(orientation='vertical', adaptive_height=True, pos_hint={'center_x': 0.5, 'center_y': 0.5}, spacing="20dp")
        
        buttons = [
            ("Workout Builder", "workout_builder"),
            ("Workout Library", "workout_library"),
            ("Planner", "planner"),
            ("Analytics", "analytics"),
            ("Exercise Database", "exercise_database"),
            ("Settings", "settings")
        ]
        
        for button_text, screen_name in buttons:
            button = MDRaisedButton(text=button_text, pos_hint={'center_x': 0.5})
            button.bind(on_press=lambda x, screen=screen_name: self.change_screen(screen))
            layout.add_widget(button)
            
        self.add_widget(layout)

    def change_screen(self, screen_name):
        self.manager.current = screen_name

class WorkoutBuilderScreen(Screen):
    def __init__(self, **kwargs):
        super(WorkoutBuilderScreen, self).__init__(**kwargs)
        self.workout_exercises = []
        layout = MDBoxLayout(orientation='vertical')
        
        toolbar = MDTopAppBar(title="Workout Builder")
        toolbar.left_action_items = [["arrow-left", lambda x: self.change_screen('home')]]
        toolbar.right_action_items = [["content-save", lambda x: self.save_workout()]]
        layout.add_widget(toolbar)

        self.workout_name_input = MDTextField(hint_text="Workout Name", mode="fill", max_text_length=100)
        layout.add_widget(self.workout_name_input)

        self.scroll_view = MDScrollView()
        self.workout_list = MDBoxLayout(orientation='vertical', adaptive_height=True, spacing="10dp", padding="10dp")
        self.scroll_view.add_widget(self.workout_list)
        layout.add_widget(self.scroll_view)

        add_button = MDFloatingActionButton(icon="plus", pos_hint={'center_x': 0.5})
        add_button.bind(on_press=self.add_exercise)
        layout.add_widget(add_button)

        self.add_widget(layout)

    def add_exercise(self, instance):
        self.manager.current = 'exercise_database'

    def add_exercise_to_workout(self, exercise):
        self.workout_exercises.append(exercise)
        self.workout_list.add_widget(OneLineListItem(text=exercise.name))
    
    def save_workout(self):
        user, _ = User.get_or_create(name='Default User', defaults={'goal': 'general', 'experience_level': 1})
        
        workout = Workout.create(
            user=user,
            name=self.workout_name_input.text,
            date=datetime.date.today()
        )
        
        for i, exercise in enumerate(self.workout_exercises):
            WorkoutExercise.create(
                workout=workout,
                exercise=exercise,
                order_index=i,
                sets=3,  # Placeholder
                reps=10, # Placeholder
                weight=50 # Placeholder
            )
        
        self.workout_list.clear_widgets()
        self.workout_exercises = []
        self.workout_name_input.text = ""
        print("Workout saved!")

    def change_screen(self, screen_name):
        self.manager.current = screen_name

class WorkoutLibraryScreen(Screen):
    def __init__(self, **kwargs):
        super(WorkoutLibraryScreen, self).__init__(**kwargs)
        layout = MDBoxLayout(orientation='vertical')
        
        toolbar = MDTopAppBar(title="Workout Library")
        toolbar.left_action_items = [["arrow-left", lambda x: self.change_screen('home')]]
        layout.add_widget(toolbar)

        self.scroll_view = MDScrollView()
        self.workout_list = MDBoxLayout(orientation='vertical', adaptive_height=True, spacing="10dp", padding="10dp")
        self.scroll_view.add_widget(self.workout_list)
        layout.add_widget(self.scroll_view)

        self.add_widget(layout)

    def on_enter(self):
        self.load_workouts()

    def load_workouts(self):
        self.workout_list.clear_widgets()
        workouts = Workout.select()
        for workout in workouts:
            item = TwoLineListItem(text=workout.name, secondary_text=f"Date: {workout.date}")
            self.workout_list.add_widget(item)

    def change_screen(self, screen_name):
        self.manager.current = screen_name


from ironmatrix.ui.widgets.calendar import CalendarWidget

class PlannerScreen(Screen):
    def __init__(self, **kwargs):
        super(PlannerScreen, self).__init__(**kwargs)
        layout = MDBoxLayout(orientation='vertical')
        
        toolbar = MDTopAppBar(title="Planner")
        toolbar.left_action_items = [["arrow-left", lambda x: self.change_screen('home')]]
        layout.add_widget(toolbar)

        layout.add_widget(CalendarWidget())

        self.add_widget(layout)

    def change_screen(self, screen_name):
        self.manager.current = screen_name


from kivy_garden.matplotlib.backend_kivyagg import FigureCanvasKivyAgg
import matplotlib.pyplot as plt

class AnalyticsScreen(Screen):
    def __init__(self, **kwargs):
        super(AnalyticsScreen, self).__init__(**kwargs)
        layout = MDBoxLayout(orientation='vertical')
        
        toolbar = MDTopAppBar(title="Analytics")
        toolbar.left_action_items = [["arrow-left", lambda x: self.change_screen('home')]]
        layout.add_widget(toolbar)

        self.add_widget(layout)

    def on_enter(self):
        self.plot_muscle_balance()

    def plot_muscle_balance(self):
        # Placeholder data
        muscle_groups = ['Chest', 'Back', 'Shoulders', 'Biceps', 'Triceps', 'Quads', 'Hamstrings', 'Glutes']
        volume = [20, 30, 25, 15, 15, 40, 20, 35]

        fig, ax = plt.subplots()
        ax.bar(muscle_groups, volume)
        ax.set_ylabel('Training Volume')
        ax.set_title('Muscle Group Balance')
        
        canvas = FigureCanvasKivyAgg(fig)
        self.add_widget(canvas)

    def change_screen(self, screen_name):
        self.manager.current = screen_name


class ExerciseDatabaseScreen(Screen):
    def __init__(self, **kwargs):
        super(ExerciseDatabaseScreen, self).__init__(**kwargs)
        layout = MDBoxLayout(orientation='vertical')
        
        toolbar = MDTopAppBar(title="Exercise Database")
        toolbar.left_action_items = [["arrow-left", lambda x: self.change_screen('home')]]
        layout.add_widget(toolbar)

        scroll = MDScrollView()
        list_view = MDBoxLayout(orientation='vertical', adaptive_height=True, spacing="10dp", padding="10dp")

        categories = [e.type for e in Exercise.select(Exercise.type).distinct()]
        
        for category in categories:
            item = OneLineListItem(text=category)
            item.bind(on_release=lambda x, cat=category: self.show_exercises_for_category(cat))
            list_view.add_widget(item)

        scroll.add_widget(list_view)
        layout.add_widget(scroll)
        self.add_widget(layout)

    def show_exercises_for_category(self, category):
        self.manager.current = 'exercise_list'
        self.manager.get_screen('exercise_list').load_exercises(category)

    def change_screen(self, screen_name):
        self.manager.current = screen_name

class ExerciseListScreen(Screen):
    def __init__(self, **kwargs):
        super(ExerciseListScreen, self).__init__(**kwargs)
        self.layout = MDBoxLayout(orientation='vertical')
        self.toolbar = MDTopAppBar()
        self.toolbar.left_action_items = [["arrow-left", lambda x: self.change_screen('exercise_database')]]
        self.layout.add_widget(self.toolbar)
        self.scroll_view = MDScrollView()
        self.list_view = MDBoxLayout(orientation='vertical', adaptive_height=True, spacing="10dp", padding="10dp")
        self.scroll_view.add_widget(self.list_view)
        self.layout.add_widget(self.scroll_view)
        self.add_widget(self.layout)

    def load_exercises(self, category):
        self.toolbar.title = category
        self.list_view.clear_widgets()
        exercises = Exercise.select().where(Exercise.type == category)
        for exercise in exercises:
            item = TwoLineListItem(text=exercise.name, secondary_text=f"Difficulty: {exercise.difficulty}")
            item.bind(on_release=lambda x, ex=exercise: self.select_exercise(ex))
            self.list_view.add_widget(item)

    def select_exercise(self, exercise):
        self.manager.current = 'workout_builder'
        self.manager.get_screen('workout_builder').add_exercise_to_workout(exercise)

    def change_screen(self, screen_name):
        self.manager.current = screen_name

class SettingsScreen(Screen):
    def __init__(self, **kwargs):
        super(SettingsScreen, self).__init__(**kwargs)
        self.add_widget(MDLabel(text="Settings", halign="center"))


class IronMatrixApp(MDApp):
    def build(self):
        sm = ScreenManager()
        sm.add_widget(HomeScreen(name='home'))
        sm.add_widget(WorkoutBuilderScreen(name='workout_builder'))
        sm.add_widget(WorkoutLibraryScreen(name='workout_library'))
        sm.add_widget(PlannerScreen(name='planner'))
        sm.add_widget(AnalyticsScreen(name='analytics'))
        sm.add_widget(ExerciseDatabaseScreen(name='exercise_database'))
        sm.add_widget(ExerciseListScreen(name='exercise_list'))
        sm.add_widget(SettingsScreen(name='settings'))
        sm.current = 'planner'
        return sm

if __name__ == '__main__':
    IronMatrixApp().run()