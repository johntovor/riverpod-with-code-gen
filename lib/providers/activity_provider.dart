import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import '../models/activity.dart';

part 'activity_provider.g.dart';

@riverpod
Future<Activity> activity(ActivityRef ref) async {
  const String endpoint = "http://www.boredapi.com/api/activity/";
  final response = await http.get(Uri.parse(endpoint));
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return Activity.fromJson(json);
}


