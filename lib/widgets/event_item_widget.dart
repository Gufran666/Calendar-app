import 'package:flutter/material.dart';

class EventItemWidget extends StatelessWidget {
  final String title;
  final String time;

  const EventItemWidget({required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: const Icon(Icons.event, color: Colors.deepPurple),
        title: Text(title),
        subtitle: Text(time),
      ),
    );
  }
}