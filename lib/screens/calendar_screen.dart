import 'package:calendar/screens/event_form_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/calendar_widget.dart';

class CalendarScreen extends StatefulWidget {
  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventFormScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: CalendarWidget(),
    );
  }
}
