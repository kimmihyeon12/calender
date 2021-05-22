import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<DateTime, List<dynamic>> _events;
  List<dynamic> _selectedEvents;
  TextEditingController _eventController;

  DateTime _selectedDay;

  DateTime _focusedDay;
  //CalendarController _calendarController = CalendarController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
            height: 600,
            color: Colors.white,
            child: TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),

              locale: 'ko-KR',

              // calendarController: _calendarController,
              //  events: _events,
              availableGestures: AvailableGestures.all,
              //  onDaySelected: _onDaySelected,
              //  builders: calendarBuilder(),
              // headerVisible: false,
              calendarBuilders: calendarBuilder(),
            )),
      ),
    );
  }

  calendarBuilder() {
    return CalendarBuilders(
      // dowBuilder: (context, day) {
      //   if (day.weekday == DateTime.sunday) {
      //     final text = DateFormat.E().format(day);

      //     return Center(
      //       child: Text(
      //         text,
      //         style: TextStyle(color: Colors.red),
      //       ),
      //     );
      //   }
      // },
      // selectedBuilder: (context, date, _) {
      //   return Container(color: Colors.pink);
      // },
      // todayBuilder: (context, date, _) {
      //   return Container(color: Colors.pink);
      // },
      // markerBuilder:
      // markerBuilder: (context, date, events, holidays) {
      //   final children = <Widget>[];

      //   if (events.isNotEmpty) {
      //     children.add(
      //       Positioned(
      //         child: _buildEventsMarker(date, events),
      //       ),
      //     );
      //   }

      //   if (holidays.isNotEmpty) {
      //     children.add(
      //       Positioned(
      //         right: -2,
      //         top: -2,
      //         child: _buildEventsMarker(date, events),
      //       ),
      //     );
      //   }

      //   return children;
      // },

      selectedBuilder: (context, date, events) => Container(
        margin: const EdgeInsets.all(5.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.pink, //Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(8.0)),
        child: Text(
          date.day.toString(),
          style: TextStyle(color: Colors.white),
        ),
      ),
      todayBuilder: (context, date, events) => Container(
        margin: const EdgeInsets.all(5.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          date.day.toString(),
          style: TextStyle(color: Colors.white),
        ),
      ),

      // todayBuilder: (context, date, _) {
      //   return Container(
      //      color:Colors.transparent);
      // },
      // weekendBuilder: (context, date, _) {
      //   return DaisyWidget().buildCalendarDay(
      //       day: date.day.toString(),
      //       backColor: Colors.white,
      //       color: Colors.red);
      // },
      // outsideDayBuilder: (context, date, _) {
      //   return DaisyWidget().buildCalendarDay(
      //       day: date.day.toString(),
      //       backColor: Colors.blue,
      //       color: Colors.red);
      // },
      // outsideHolidayDayBuilder: (context, date, _) {
      //   return DaisyWidget().buildCalendarDay(
      //       day: date.day.toString(),
      //       backColor: Colors.deepOrange,
      //       color: Colors.red);
      // },
      // holidayDayBuilder: (context, date, _) {
      //   return DaisyWidget().buildCalendarDay(
      //       day: date.day.toString(),
      //       backColor: Colors.purple,
      //       color: Colors.red);
      // },
      // outsideWeekendDayBuilder: (context, date, _) {
      //   return DaisyWidget().buildCalendarDay(
      //       day: date.day.toString(),
      //       backColor: Colors.pinkAccent,
      //       color: Colors.black);
      // },
      // dowWeekdayBuilder: (context, date) {
      //   return DaisyWidget().buildCalendarDay(
      //       day: date.toString(), backColor: Colors.yellow, color: Colors.red);
      // },
      // dowWeekendBuilder: (context, date) {
      //   return DaisyWidget().buildCalendarDay(
      //       day: date.toString(), backColor: Colors.green, color: Colors.red);
      // },
      // unavailableDayBuilder: (context, date, _) {
      //   return DaisyWidget().buildCalendarDay(
      //       day: date.day.toString(),
      //       backColor: Colors.red,
      //       color: DaisyColors.serveColor);
      // },
      // markersBuilder: (context, date, events, holidays) {
      //   final children = <Widget>[];
      //   if (events.isNotEmpty) {
      //     children.add(
      //       Positioned(
      //         bottom: 1,
      //         child: _buildEventsMarkerNum(date),
      //       ),
      //     );
      //   }
      //   return children;
      // },
    );
  }

  Widget _buildEventsMarker(DateTime date, List events) {
    print(date);
    return Container(
      margin: const EdgeInsets.all(5.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xffF86D37),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        date.day.toString(),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
