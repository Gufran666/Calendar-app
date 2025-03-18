import 'package:flutter/material.dart';

class Event {
  String id;
  String title;
  DateTime date;
  TimeOfDay startTime;
  TimeOfDay endTime;
  String note;
  bool isReminderSet;
  final String? description;

  Event({
    required this.id,
    required this.title,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.note,
    required this.isReminderSet,
    this.description,
});
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'date': date.toIso8601String(),
    'startTime': '${startTime.hour}:${startTime.minute}',
    'endTime': '${endTime.hour}:${endTime.minute}',
    'note': note,
    'isReminderSet': isReminderSet,
  };
  factory Event.fromJson(Map<String, dynamic> json) {
    final timeParts = (String time) =>
        TimeOfDay(hour: int.parse(time.split(':')[0]), minute: int.parse(time.split(':')[1]));
    return Event(
      id: json['id'],
      title: json['title'],
      date: DateTime.parse(json['date']),
      startTime: timeParts(json['startTime']),
      endTime: timeParts(json['endTime']),
      note: json['note'],
      isReminderSet: json['isReminderSet'],
    );
  }
}