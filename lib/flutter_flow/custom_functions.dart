import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '/auth/firebase_auth/auth_util.dart';

double progressBarValue(
  int? totalNumber,
  int? completedNumber,
) {
  // Sum the number of tasks complete and convert to a 0 - 1.0 scale
  if (totalNumber == null || completedNumber == null || totalNumber == 0) {
    return 0.0;
  }
  final value = completedNumber.toDouble() / totalNumber;
  if (value == 1.0) {
    return 1.0;
  }
  return value;
  // I have updated this. Updated again.
}

dynamic getTask(
  String mobileID,
  String? project,
  String subject,
  String? description,
  String? expEndDate,
  String? expectedEndTime,
  int? assignToMe,
) {
  return {
    "project": project,
    "subject": subject,
    "name": mobileID,
    "mobile_id": mobileID,
    "description": description,
    "exp_end_date": expEndDate,
    "expected_end_time": expectedEndTime,
    "assign_to_me": assignToMe,
    "modified": DateFormat('yyyy-MM-dd hh:mm:ss').format(DateTime.now())
  };
}

String? getString(String? value) {
  if (value == null) {
    return "";
  }
  if (value == "null") {
    return "";
  }
}

DateTime? getStringFromTime(String? time) {
  try {
    return DateTime.parse("1970-01-01 $time");
  } catch (e) {
    return DateTime.now();
  }
}

DateTime? getStringFromDate(String? date) {
  try {
    if (date != null) {
      return DateTime.parse(date);
    } else {
      return DateTime.now();
    }
  } catch (e) {
    return DateTime.now();
  }
}

dynamic getProject(
  String projectName,
  String? projectDescription,
  String mobileID,
) {
  return {
    "project_name": projectName,
    "project_name": projectDescription,
    "name": mobileID,
    "mobile_id": mobileID,
    "count_tasks": 0,
    "modified": DateFormat('yyyy-MM-dd hh:mm:ss').format(DateTime.now())
  };
}

dynamic getTaskAdded(
  dynamic tasks,
  dynamic newTask,
) {
  String status = newTask["status"];
  int assignToMe = newTask["assign_to_me"];
  if (assignToMe == 1) {
    tasks["my_tasks"].add(newTask);
  } else {
    String key = status.replaceAll(RegExp(r' '), '_').toLowerCase();
    tasks[key].add(newTask);
  }
  return tasks;
}
