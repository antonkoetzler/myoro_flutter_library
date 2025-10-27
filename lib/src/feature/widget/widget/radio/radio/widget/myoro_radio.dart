import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// Single radio(box) [Widget].
class MyoroRadio extends StatelessWidget {
  /// Default value of [label].
  static const labelDefaultValue = kMyoroEmptyString;

  /// Default constructor.
  const MyoroRadio({
    super.key,
    this.style = const MyoroRadioStyle(),
    this.controller,
    this.initialValue,
    this.label = labelDefaultValue,
    this.onChanged,
  }) : assert(
         !(controller != null && initialValue != null),
         '[MyoroRadio]: If [controller] is provided, set the initial '
         'value within the [MyoroRadioController]\'s constructor.',
       );

  /// Style.
  final MyoroRadioStyle style;

  /// [ValueNotifier] to manage state externally.
  final ValueNotifier<bool>? controller;

  /// Value of the radio.
  ///
  /// Typically used as the initial value, but this member may also
  /// be used to change the value of the radio externally in the
  /// [Widget] state of the parent using [MyoroRadio] via rebuild.
  final bool? initialValue;

  /// Label to the right of the radio.
  final String label;

  /// Function executed when the [MyoroRadio] is clicked.
  final MyoroRadioOnChanged? onChanged;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroRadioThemeExtension>();
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;
    final labelTextStyle = style.labelTextStyle ?? themeExtension.labelTextStyle;
    final activeColor = style.activeColor ?? themeExtension.activeColor;
    final hoverColor = style.hoverColor ?? themeExtension.hoverColor;
    final splashRadius = style.splashRadius ?? themeExtension.splashRadius;

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: style),
        InheritedProvider(
          create: (_) => controller ?? ValueNotifier(initialValue ?? false),
          dispose: (_, c) => controller == null ? c.dispose() : null,
        ),
      ],
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: spacing,
        children: [
          Consumer<ValueNotifier<bool>>(
            builder: (_, controller, _) {
              final enabled = controller.value;
              return Radio(
                value: true,
                groupValue: controller.value,
                toggleable: true,
                activeColor: activeColor,
                hoverColor: hoverColor,
                splashRadius: splashRadius,
                onChanged: (_) {
                  controller.value = !enabled;
                  onChanged?.call(controller.value);
                },
              );
            },
          ),
          if (label.isNotEmpty) Flexible(child: Text(label, style: labelTextStyle)),
        ],
      ),
    );
  }
}
