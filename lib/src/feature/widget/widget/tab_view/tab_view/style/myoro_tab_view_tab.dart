import 'package:flutter/material.dart';

/// Model of a single tab apart of a [MyoroTabView].
@immutable
class MyoroTabViewTab {
  const MyoroTabViewTab({this.icon, this.text, required this.content})
    : assert(icon != null || text != null, '[MyoroTabViewTab]: [icon] and/or [text] must be provided.');

  /// [IconData] of the [MyoroTabViewTab].
  final IconData? icon;

  /// Text of the [MyoroTabViewTab].
  final String? text;

  /// Content of the [MyoroTabViewTab].
  final Widget content;
}
