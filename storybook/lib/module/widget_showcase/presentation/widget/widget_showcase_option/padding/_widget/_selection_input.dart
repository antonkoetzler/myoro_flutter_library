part of '../padding_widget_showcase_option.dart';

/// Selection [MyoroInput] of [PaddingWidgetShowcaseOption].
final class _SelectionInput extends StatelessWidget {
  const _SelectionInput({this.label, required this.value, required this.onChanged});

  /// [MyoroInputConfiguration.label]
  final String? label;

  /// [MyoroInputConfiguration.text]
  final double value;

  /// [MyoroInputConfiguration.onChanged]
  final PaddingWidgetShowcaseOptionSelectionInputOnChanged onChanged;

  @override
  Widget build(context) {
    final viewModel = context.read<PaddingWidgetShowcaseOptionViewModel>();
    final enabledController = viewModel.state.enabledController;

    return ValueListenableBuilder(
      valueListenable: enabledController,
      builder: (_, bool enabled, _) {
        return MyoroNumberInput(
          min: 0,
          max: 50,
          label: label ?? MyoroInput.labelDefaultValue,
          enabled: enabled,
          text: value.toStringAsFixed(0),
          onChanged: (String text) => onChanged(double.parse(text)),
        );
      },
    );
  }
}
