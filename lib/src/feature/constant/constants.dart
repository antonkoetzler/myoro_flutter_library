import 'package:flutter/material.dart';

/// Multiplier for all stylistic values.
const kMyoroMultiplier = 4.0;

/// Empty string.
const kMyoroEmptyString = '';

/// Debounce.
const kMyoroDebounceDuration = Duration(milliseconds: 200);

/// Throttling.
const kMyoroThrottleDuration = Duration(milliseconds: 500);

/// Tooltip wait duration.
const kMyoroTooltipWaitDuration = Duration(milliseconds: 200);

/// Border width.
const kMyoroBorderWidth = kMyoroMultiplier / 4;

/// [BorderRadius] length.
const kMyoroBorderRadius = kMyoroMultiplier;

/// Animation [Duration].
const kMyoroAnimationDuration = Duration(milliseconds: 300);

/// [Alignment]s for testing.
const kMyoroTestAlignments = [
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
