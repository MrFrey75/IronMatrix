from kivymd.app import MDApp
from kivy.uix.screenmanager import ScreenManager, Screen
from kivymd.uix.boxlayout import MDBoxLayout
from kivymd.uix.button import MDRaisedButton
from kivymd.uix.label import MDLabel
from kivymd.uix.scrollview import MDScrollView
from kivymd.uix.list import OneLineListItem, TwoLineListItem
from kivymd.uix.toolbar import MDTopAppBar

from ironmatrix.data.models import Exercise

class HomeScreen(Screen):
    def __init__(self, **kwargs):
        super(HomeScreen, self).__init__(**kwargs)
        layout = MDBoxLayout(orientation='vertical', adaptive_height=True, pos_hint={'center_x': 0.5, 'center_y': 0.5}, spacing="20dp")
        
        buttons = [
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

class WorkoutLibraryScreen(Screen):
    def __init__(self, **kwargs):
        super(WorkoutLibraryScreen, self).__init__(**kwargs)
        self.add_widget(MDLabel(text="Workout Library", halign="center"))

class PlannerScreen(Screen):
    def __init__(self, **kwargs):
        super(PlannerScreen, self).__init__(**kwargs)
        self.add_widget(MDLabel(text="Planner", halign="center"))

class AnalyticsScreen(Screen):
    def __init__(self, **kwargs):
        super(AnalyticsScreen, self).__init__(**kwargs)
        self.add_widget(MDLabel(text="Analytics", halign="center"))

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
            self.list_view.add_widget(item)

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
        sm.add_widget(WorkoutLibraryScreen(name='workout_library'))
        sm.add_widget(PlannerScreen(name='planner'))
        sm.add_widget(AnalyticsScreen(name='analytics'))
        sm.add_widget(ExerciseDatabaseScreen(name='exercise_database'))
        sm.add_widget(ExerciseListScreen(name='exercise_list'))
        sm.add_widget(SettingsScreen(name='settings'))
        sm.current = 'exercise_database'
        return sm

if __name__ == '__main__':
    IronMatrixApp().run()
