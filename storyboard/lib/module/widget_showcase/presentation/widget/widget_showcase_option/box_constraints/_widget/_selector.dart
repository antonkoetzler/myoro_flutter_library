part of '../box_constraints_widget_showcase_option.dart';

/// [MyoroSlider] to select the desired [BoxConstraints] value in [BoxConstraintsWidgetShowcaseOption].
final class _Selector extends StatelessWidget {
  const _Selector(this._configuration);

  /// Configuration.
  final BoxConstraintsWidgetShowcaseOptionSelectorConfiguration _configuration;

  @override
  Widget build(BuildContext context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Row(
      spacing: widgetShowcaseThemeExtension.spacing,
      children: [
        MyoroCheckbox(
          configuration: MyoroCheckboxConfiguration(
            onChanged: (enabled) => _configuration.controller.enabled = enabled,
          ),
        ),
        Expanded(
          child: MyoroSlider(
            configuration: MyoroSliderConfiguration(
              label: _configuration.label,
              onChanged: (value) => _configuration.controller.value = value,
            ),
          ),
        ),
      ],
    );
  }
}
