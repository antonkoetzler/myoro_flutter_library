import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Generic [Widget] for an option within [WidgetShowcase.widgetOptions].
/// Every [Widget] within this directory must have [WidgetShowcaseOption]
/// as it's root [Widget].
///
/// If [initialValue] and [onChanged] are provided, [_Label] will
/// be a [MyoroCheckbox]. This is useful for a nullable argument.
final class WidgetShowcaseOption extends StatelessWidget {
  /// [_Label] configuration.
  final WidgetShowcaseOptionLabelConfiguration labelConfiguration;

  /// Content of the option.
  final Widget? child;

  const WidgetShowcaseOption({super.key, required this.labelConfiguration, this.child});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseOptionThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.spacing,
      children: [_Label(labelConfiguration), if (child != null) Flexible(child: child!)],
    );
  }
}

final class _Label extends StatelessWidget {
  final WidgetShowcaseOptionLabelConfiguration _labelConfiguration;

  const _Label(this._labelConfiguration);

  @override
  Widget build(BuildContext context) {
    final String label = _labelConfiguration.label;

    final themeExtension = context.resolveThemeExtension<WidgetShowcaseOptionThemeExtension>();
    final TextStyle labelTextStyle = themeExtension.labelTextStyle;

    if (_labelConfiguration.isNullable) {
      return MyoroCheckbox(
        configuration: MyoroCheckboxConfiguration(
          label: label,
          labelTextStyle: labelTextStyle,
          initialValue: _labelConfiguration.initialValue!,
          onChanged: _labelConfiguration.onChanged!,
        ),
      );
    }

    return Text(label, style: labelTextStyle);
  }
}
