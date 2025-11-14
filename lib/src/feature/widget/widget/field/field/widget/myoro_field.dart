import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_label.dart';
part '../_widget/_data.dart';
part '../_widget/_horizontal_layout.dart';
part '../_widget/_vertical_layout.dart';

/// Generic field [Widget] of MFL.
class MyoroField extends StatelessWidget {
  /// Default value for [direction].
  static const directionDefaultValue = Axis.horizontal;

  /// Default constructor.
  const MyoroField({
    super.key,
    this.style = const MyoroFieldStyle(),
    this.direction = directionDefaultValue,
    required this.label,
    this.labelConfiguration,
    required this.data,
    this.dataConfiguration,
  }) : assert(label.length > 0, '[MyoroField]: [label] cannot be empty.'),
       assert(data.length > 0, '[MyoroField]: [data] cannot be empty.');

  /// Style.
  final MyoroFieldStyle style;

  /// Direction of the field.
  final Axis direction;

  /// Label.
  final String label;

  /// Label of the field.
  final MyoroTextConfiguration? labelConfiguration;

  /// Data.
  final String data;

  /// Data of the field.
  final MyoroTextConfiguration? dataConfiguration;

  /// Build function.
  @override
  Widget build(context) {
    return InheritedProvider.value(
      value: style,
      child: switch (direction) {
        Axis.horizontal => _HorizontalLayout(label, labelConfiguration, data, dataConfiguration),
        Axis.vertical => _VerticalLayout(label, labelConfiguration, data, dataConfiguration),
      },
    );
  }
}
