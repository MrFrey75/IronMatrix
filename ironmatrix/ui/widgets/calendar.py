from kivymd.uix.gridlayout import MDGridLayout
from kivymd.uix.label import MDLabel
from kivymd.uix.button import MDIconButton
import calendar

class CalendarWidget(MDGridLayout):
    def __init__(self, **kwargs):
        super(CalendarWidget, self).__init__(**kwargs)
        self.cols = 7
        self.year = 2025
        self.month = 8

        self.header = MDGridLayout(cols=3)
        self.header.add_widget(MDIconButton(icon='chevron-left', on_release=self.prev_month))
        self.month_label = MDLabel(text=f"{calendar.month_name[self.month]} {self.year}", halign='center')
        self.header.add_widget(self.month_label)
        self.header.add_widget(MDIconButton(icon='chevron-right', on_release=self.next_month))
        self.add_widget(self.header)

        self.day_labels = MDGridLayout(cols=7)
        for day in calendar.day_abbr:
            self.day_labels.add_widget(MDLabel(text=day, halign='center'))
        self.add_widget(self.day_labels)

        self.days_grid = MDGridLayout(cols=7)
        self.add_widget(self.days_grid)

        self.update_calendar()

    def update_calendar(self):
        self.days_grid.clear_widgets()
        self.month_label.text = f"{calendar.month_name[self.month]} {self.year}"
        month_days = calendar.monthcalendar(self.year, self.month)
        for week in month_days:
            for day in week:
                if day == 0:
                    self.days_grid.add_widget(MDLabel(text=''))
                else:
                    self.days_grid.add_widget(MDLabel(text=str(day), halign='center'))

    def prev_month(self, *args):
        self.month -= 1
        if self.month == 0:
            self.month = 12
            self.year -= 1
        self.update_calendar()

    def next_month(self, *args):
        self.month += 1
        if self.month == 13:
            self.month = 1
            self.year += 1
        self.update_calendar()
