import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A group of [MyoroCheckbox]s.
final class MyoroGroupCheckbox extends StatefulWidget {
  /// Direction that the checkboxes build in.
  final Axis direction;

  /// Text style of the checkboxes.
  final TextStyle? labelTextStyle;

  /// Main axis spacing in between each checkbox.
  final double? spacing;

  /// Cross axis spacing in between each checkbox.
  final double? runSpacing;

  /// List of checkboxes in the group.
  final List<MyoroGroupCheckboxItem> checkboxes;

  MyoroGroupCheckbox({
    super.key,
    this.direction = Axis.horizontal,
    this.labelTextStyle,
    this.spacing,
    this.runSpacing,
    required this.checkboxes,
  }) : assert(
          checkboxes.isNotEmpty,
          '[MyoroGroupCheckbox]: [checkboxes] not must be empty.',
        );

  @override
  State<MyoroGroupCheckbox> createState() => _MyoroGroupCheckboxState();
}

final class _MyoroGroupCheckboxState extends State<MyoroGroupCheckbox> {
  Axis get _direction => widget.direction;
  TextStyle? get _labelTextStyle => widget.labelTextStyle;
  double? get _spacing => widget.spacing;
  double? get _runSpacing => widget.runSpacing;
  List<MyoroGroupCheckboxItem> get _checkboxes => widget.checkboxes;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroGroupCheckboxThemeExtension>();

    return Wrap(
      spacing: _spacing ?? themeExtension.spacing,
      runSpacing: _runSpacing ?? themeExtension.runSpacing,
      direction: _direction,
      children: _checkboxes.map<Widget>(
        (MyoroGroupCheckboxItem checkbox) {
          return MyoroCheckbox(
            label: checkbox.label,
            initialValue: checkbox.initialValue,
            labelTextStyle: _labelTextStyle,
            onChanged: (bool value) => throw UnimplementedError(), // TODO
          );
        },
      ).toList(),
    );
  }
}
