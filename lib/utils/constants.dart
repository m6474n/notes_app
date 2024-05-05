import 'dart:math';

import 'package:flutter/material.dart';

class AppConstants{
  static Color mainAppColor = Colors.primaries[Random().nextInt(Colors.primaries.length)].withOpacity(0.3);
  static String apiUrl = "http://127.0.0.1:3000/api/v1/notes";
}