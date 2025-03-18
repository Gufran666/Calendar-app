import 'package:flutter/material.dart';
import 'event_item_widget.dart';

class EventListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> events = [
      {'title': 'Meeting', 'time': '09:00 AM - 10:00 AM'},
    {'title': 'Workout', 'time': '6:00 PM - 7:00 PM'},
    ];

    return ListView.builder(
    padding: const EdgeInsets.all(8.0),
    itemCount: events.length,
    itemBuilder: (context, index) {
      return EventItemWidget(
        title: events[index]['title']!,
        time: events[index]['time']!,
      );
    },
    );
  }
}