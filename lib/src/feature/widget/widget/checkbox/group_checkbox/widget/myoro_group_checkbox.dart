import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// A group of [MyoroCheckbox]s.
class MyoroGroupCheckbox extends StatelessWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroGroupCheckboxStyle();

  /// Default value of [direction].
  static const directionDefaultValue = Axis.vertical;

  const MyoroGroupCheckbox({
    super.key,
    this.style = styleDefaultValue,
    this.checkboxes,
    this.controller,
    this.direction = directionDefaultValue,
    this.onChanged,
  }) : assert(
         (controller != null) ^ (checkboxes != null),
         '[MyoroGroupCheckbox]: [controller] (x)or [checkboxes] must be provided.',
       );

  /// Style.
  final MyoroGroupCheckboxStyle style;

  /// Checkboxes of the [MyoroGroupCheckbox].
  final MyoroGroupCheckboxItems? checkboxes;

  /// Controller.
  final MyoroGroupCheckboxController? controller;

  /// Direction that the checkboxes will built in.
  final Axis direction;

  /// Function executed when any of the checkbox's values are changed.
  final MyoroGroupCheckboxOnChanged? onChanged;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroGroupCheckboxThemeExtension>();
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;
    final runSpacing = style.runSpacing ?? themeExtension.runSpacing ?? 0;

    return InheritedProvider(
      create: (_) => controller ?? MyoroGroupCheckboxController(checkboxes: checkboxes!),
      dispose: (_, c) => controller != null ? c.dispose() : null,
      child: Consumer<MyoroGroupCheckboxController>(
        builder: (_, controller, _) {
          final checkboxes = controller.checkboxes;

          return Wrap(
            direction: direction,
            spacing: spacing,
            runSpacing: runSpacing,
            children: checkboxes.entries.map<Widget>((entry) {
              return MyoroCheckbox(
                style: style,
                label: entry.key,
                value: entry.value,
                onChanged: (bool value) {
                  controller.toggle(entry.key, value);
                  onChanged?.call(entry.key, checkboxes);
                },
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
