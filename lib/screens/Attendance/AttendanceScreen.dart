import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:gym_app/common/CommonWidgets.dart';
import 'package:intl/intl.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  DateTime _currentDate = DateTime.now();
  DateTime _targetDateTime = DateTime.now();
  EventList<Event> _markedDateMap = EventList<Event>(events: {});
  final List<DateTime> redDates = [
    DateTime(2024, 12, 12),
    DateTime(2024, 12, 11),
    DateTime(2024, 12, 20),
  ];

  final List<DateTime> greenDates = [
    DateTime(2024, 12, 1),
    DateTime(2024, 12, 4),
    DateTime(2024, 12, 5),
  ];

  @override
  void initState() {
    super.initState();
    _initializeMarkedDates();
  }

   void _initializeMarkedDates() {
    for (var date in redDates) {
      _markedDateMap.add(
        date,
        Event(
          date: date,
          title: 'Red Marker',
          dot: Container(
            margin: const EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.red,
            height: 5.0,
            width: 5.0,
          ),
        ),
      );
    }

    // Add green markers
    for (var date in greenDates) {
      _markedDateMap.add(
        date,
        Event(
          date: date,
          title: 'Green Marker',
          dot: Container(
            margin: const EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.green,
            height: 5.0,
            width: 5.0,
          ),
        ),
      );
    }
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: SecondaryAppBar(title: "Attendance"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CalendarCarousel<Event>(
                onDayPressed: (date, events) {
                  setState(() {
                    _currentDate = date;
                  });
                  events.forEach((event) => print(event.title));
                },
                weekendTextStyle: const TextStyle(color: Colors.red),
                thisMonthDayBorderColor: Colors.black,
                headerTextStyle: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                markedDatesMap: _markedDateMap,
                selectedDateTime: _currentDate,
                showIconBehindDayText: false,
                markedDateShowIcon: false,
                markedDateMoreShowTotal: false,
                todayButtonColor: Colors.amber,
                todayBorderColor: Colors.blue,
                todayTextStyle: TextStyle(color: Colors.black),
                height: 350,
                selectedDayButtonColor: Colors.amber,
                markedDateIconBuilder: (event) {
                  return event.dot;
                },
                onCalendarChanged: (DateTime date) {
                  setState(() {
                    _targetDateTime = date;
                  });
                },
                showHeader: true,
              ),
            ),
             Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildLegendItem(Colors.red, "Absent: ${redDates.length}"),
                  _buildLegendItem(Colors.green, "Present: ${greenDates.length}"),
                  _buildLegendItem(Colors.orangeAccent, "Today"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildLegendItem(Color color, String label) {
    return Row(
      children: [
        Container(
          width: 12.0,
          height: 12.0,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8.0),
        Text(label, style: const TextStyle(fontSize: 14.0)),
      ],
    );
  }