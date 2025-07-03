import 'package:flutter/material.dart';

// TODO: Move into lib/src

// Debounce.
const kMyoroDebounceDuration = Duration(milliseconds: 200);

// Throttling.
const kMyoroThrottleDuration = Duration(milliseconds: 500);

// Borders.
const kMyoroBorderLength = 2.0;
const kMyoroInputBorderLength = 8.0;
const kMyoroBorderRadiusLength = 8.0;

/// [Alignment]s for testing.
final kMyoroTestAlignments = [
  Alignment.center,
  Alignment.topLeft,
  Alignment.topRight,
  Alignment.topCenter,
  Alignment.centerLeft,
  Alignment.bottomLeft,
  Alignment.centerRight,
  Alignment.bottomRight,
  Alignment.bottomCenter,
];

/// [Color]s for testing.
const kMyoroTestColors = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.pink,
  Colors.purple,
  Colors.cyan,
  Colors.lime,
  Colors.lightBlue,
  Colors.blueGrey,
  Colors.orange,
];

/// [Curve]s for testing.
const kMyoroTestCurves = [
  Curves.ease,
  Curves.easeIn,
  Curves.easeOut,
  Curves.linear,
  Curves.bounceIn,
  Curves.bounceOut,
  Curves.bounceInOut,
];

/// [SystemMouseCursor]s for testing.
const kMyoroTestCursors = [
  SystemMouseCursors.basic,
  SystemMouseCursors.click,
  SystemMouseCursors.help,
  SystemMouseCursors.resizeRow,
  SystemMouseCursors.resizeColumn,
  SystemMouseCursors.zoomIn,
  SystemMouseCursors.zoomOut,
];

/// [IconData]s for testing.
const kMyoroTestIcons = [
  Icons.abc,
  Icons.ac_unit,
  Icons.access_alarm,
  Icons.access_time,
  Icons.accessibility,
  Icons.bolt,
  Icons.block,
  Icons.crop_free,
  Icons.adb_sharp,
  Icons.youtube_searched_for,
];
