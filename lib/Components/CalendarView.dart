import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'Info.dart';

class SecondScreen extends StatefulWidget {

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: CalendarView(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Calendar')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            title: Text('Chart')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            title: Text('chat')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('User')
          )
        ],
        selectedItemColor: Colors.amberAccent[700],
        unselectedItemColor: Colors.grey[600],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class CalendarView extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}


class _CalendarState extends State<CalendarView> {

  Map<DateTime, List> _events;
  List _selectedEvents;
  AnimationController _animationController;
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _calendarController.dispose();
    super.dispose();
  }

  void _onDaySelected(DateTime day, List events) {
    print('CALLBACK: _onDaySelected');
    setState(() {
      _selectedEvents = events;
    });
  }


  void _onVisibleDaysChanged(DateTime first, DateTime last, CalendarFormat format) {
    print('CALLBACK: _onVisibleDaysChanged');
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      calendarController: _calendarController,
      locale: 'en_US',
      startingDayOfWeek: StartingDayOfWeek.monday,
      availableGestures: AvailableGestures.none,
      availableCalendarFormats: const {
        CalendarFormat.month: 'Month',
      },
      calendarStyle: CalendarStyle(
        weekdayStyle: TextStyle(color: Colors.grey[600]),
        weekendStyle: TextStyle(color: Colors.grey[600]),
        outsideStyle: TextStyle(color: Colors.black),
        unavailableStyle: TextStyle(color: Colors.black),
        outsideWeekendStyle: TextStyle(color: Colors.black),
        todayColor: Colors.teal[900],
        outsideDaysVisible: false,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        highlightToday: true,
        renderSelectedFirst: false
      ),
      headerStyle: HeaderStyle(
        titleTextStyle: TextStyle(
          fontSize: 24,
          color: Colors.black
        )
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        dowTextBuilder: (date, locale) {
          return DateFormat.E(locale).format(date).substring(0, 2);
        },
        weekdayStyle: TextStyle(
          color: Colors.grey[600],
          fontSize: 18,
        ),
        weekendStyle: TextStyle(
          color: Colors.grey[600],
          fontSize: 18
        ),
      ),
      headerVisible: true,
      builders: CalendarBuilders(
        selectedDayBuilder: (context, date, _) {
          return Container(
            decoration: new BoxDecoration(
              color: Colors.teal[900],
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            margin: const EdgeInsets.all(4.0),
            width: 100,
            height: 100,
            child: Container(
              alignment: Alignment.topRight,
              padding: const EdgeInsets.all(4),
              child: Text(
                '${date.day}',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
        dayBuilder: (context, date, _) {
          return Container(
            margin: const EdgeInsets.all(5),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey[600],
                  width: 0.2
                ),
                borderRadius: BorderRadius.circular(7)
              ) 
            ),
            width: 100,
            height: 100,
            child: Container(
              padding: const EdgeInsets.all(4),
              alignment: Alignment.topRight,
              child: Text(
                '${date.day}',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[600],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}