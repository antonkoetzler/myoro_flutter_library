part of '../box_constraints_widget_showcase_option.dart';

/// [MyoroSlider] to select the desired [BoxConstraints] value in [BoxConstraintsWidgetShowcaseOption].
final class _Selector extends StatelessWidget {
  const _Selector(this._label, this._controller);

  final String _label;
  final BoxConstraintsWidgetShowcaseOptionSelectorController _controller;

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Row(
      spacing: widgetShowcaseThemeExtension.spacing,
      children: [
        MyoroCheckbox(label: _label, onChanged: (enabled) => _controller.enabled = enabled),
        Expanded(
          child: MyoroSlider(
            configuration: MyoroSliderConfiguration(
              label: _label,
              value: _controller.value,
              onChanged: (value) => _controller.value = value,
            ),
          ),
        ),
      ],
    );
  }
}
