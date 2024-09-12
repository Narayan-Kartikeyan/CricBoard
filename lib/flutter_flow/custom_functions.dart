import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';

String newCustomFunction(String input) {
  List<String> parts = input.split(' ');

  // Return the first part, which is expected to be the city name
  return parts[0];
}

bool newCustomFunction2(String score) {
  return !score.contains("(");
}

int newCustomFunction3(String value) {
  if (value == '-') {
    return -1;
  }

  return double.parse(value).toInt();
}
