// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:table_calendar/table_calendar.dart';

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   Map<DateTime, List<dynamic>> _events;
//   List<dynamic> _selectedEvents;
//   CalendarController _calendarController = CalendarController();

//   var children;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Container(
//             height: 450,
//             width: 400,
//             color: Colors.white,
//             child: TableCalendar(
//               // calendarStyle: CalendarStyle(
//               //     canEventMarkersOverflow: true,
//               //     todayColor: Colors.orange,
//               //     selectedColor: Colors.pink,
//               //     todayStyle: TextStyle(
//               //         fontWeight: FontWeight.bold,
//               //         fontSize: 18.0,
//               //         color: Colors.white)),
//               locale: 'ko-KR',

//               onDaySelected: (date, dd, aa) {
//                 print(date);
//               },
//               calendarController: _calendarController,

//               //  events: _events,
//               //  availableGestures: AvailableGestures.all,
//               // onDaySelected: _onDaySelected,
//               headerStyle: HeaderStyle(
//                 formatButtonTextStyle:
//                     TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
//                 formatButtonDecoration: BoxDecoration(
//                   color: Colors.deepOrange[400],
//                   borderRadius: BorderRadius.circular(16.0),
//                 ),
//               ),
//               onVisibleDaysChanged: _onVisibleDaysChanged,
//               onCalendarCreated: _onCalendarCreated,
//               builders: CalendarBuilders(
//                   markersBuilder: (context, date, events, holidays) {
//                 if (events.isNotEmpty) {
//                   children.add(
//                     Positioned(
//                       right: 1,
//                       top: 1,
//                       child: _buildEventsMarker(date, events),
//                     ),
//                   );
//                 }
//               }),
//               headerVisible: true,
//             )),
//       ),
//     );
//   }

//   calendarBuilder() {
//     return CalendarBuilders(

//         // dayBuilder: (context, date, events) {
//         //   final children = <Widget>[];

//         //   return Container(
//         //     margin: EdgeInsets.only(left: 40),
//         //     height: 10,
//         //     width: 10,
//         //     color: Colors.pink,
//         //     child: Center(child: Text("2")),
//         //   );
//         //   // return children;
//         // },
//         // dowBuilder: (context, day) {
//         //   if (day.weekday == DateTime.sunday) {
//         //     final text = DateFormat.E().format(day);

//         //     return Center(
//         //       child: Text(
//         //         text,
//         //         style: TextStyle(color: Colors.red),
//         //       ),
//         //     );
//         //   }
//         // },
//         // selectedBuilder: (context, date, _) {
//         //   return Container(color: Colors.pink);
//         // },
//         // todayBuilder: (context, date, _) {
//         //   return Container(color: Colors.pink);
//         // },

//         // todayBuilder: (context, date, _) {
//         //   return Container(
//         //      color:Colors.transparent);
//         // },
//         // weekendBuilder: (context, date, _) {
//         //   return DaisyWidget().buildCalendarDay(
//         //       day: date.day.toString(),
//         //       backColor: Colors.white,
//         //       color: Colors.red);
//         // },
//         // outsideDayBuilder: (context, date, _) {
//         //   return DaisyWidget().buildCalendarDay(
//         //       day: date.day.toString(),
//         //       backColor: Colors.blue,
//         //       color: Colors.red);
//         // },
//         // outsideHolidayDayBuilder: (context, date, _) {
//         //   return DaisyWidget().buildCalendarDay(
//         //       day: date.day.toString(),
//         //       backColor: Colors.deepOrange,
//         //       color: Colors.red);
//         // },
//         // holidayDayBuilder: (context, date, _) {
//         //   return DaisyWidget().buildCalendarDay(
//         //       day: date.day.toString(),
//         //       backColor: Colors.purple,
//         //       color: Colors.red);
//         // },
//         // outsideWeekendDayBuilder: (context, date, _) {
//         //   return DaisyWidget().buildCalendarDay(
//         //       day: date.day.toString(),
//         //       backColor: Colors.pinkAccent,
//         //       color: Colors.black);
//         // },
//         // dowWeekdayBuilder: (context, date) {
//         //   return DaisyWidget().buildCalendarDay(
//         //       day: date.toString(), backColor: Colors.yellow, color: Colors.red);
//         // },
//         // dowWeekendBuilder: (context, date) {
//         //   return DaisyWidget().buildCalendarDay(
//         //       day: date.toString(), backColor: Colors.green, color: Colors.red);
//         // },
//         // unavailableDayBuilder: (context, date, _) {
//         //   return DaisyWidget().buildCalendarDay(
//         //       day: date.day.toString(),
//         //       backColor: Colors.red,
//         //       color: DaisyColors.serveColor);
//         // },
//         // markersBuilder: (context, date, events, holidays) {
//         //   final children = <Widget>[];
//         //   if (events.isNotEmpty) {
//         //     children.add(
//         //       Positioned(
//         //         bottom: 1,
//         //         child: _buildEventsMarkerNum(date),
//         //       ),
//         //     );
//         //   }
//         //   return children;
//         // },
//         );
//   }

//   Widget _buildEventsMarker(data, events) {
//     return Container(
//       width: 80.0,
//       height: 20.0,
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         shape: BoxShape.rectangle,
//         borderRadius: null,
//       ),
//     );
//   }
// }
