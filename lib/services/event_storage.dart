import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/event_model.dart';

class EventStorage {
  static const _storageKey = "events";

  static Future<void> saveEvents(List<Event> events) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonEvents = events.map((e) => e.toJson()).toList();
    prefs.setString(_storageKey, jsonEncode(jsonEvents));
  }

  static Future<List<Event>> loadEvents() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_storageKey);
    if (jsonString == null) return [];
    final List<dynamic> jsonList = jsonDecode(jsonString);
    return jsonList.map((e) => Event.fromJson(e)).toList();
  }
}