part of '../padding_widget_showcase_option.dart';

/// Selection [MyoroInput] of [PaddingWidgetShowcaseOption].
final class _SelectionInput extends StatelessWidget {
  const _SelectionInput({this.label, required this.onChanged});

  /// [MyoroInputConfiguration.label]
  final String? label;

  /// [MyoroInputConfiguration.onChanged]
  final PaddingWidgetShowcaseOptionSelectionInputOnChanged onChanged;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<PaddingWidgetShowcaseOptionViewModel>();

    return ValueListenableBuilder(
      valueListenable: viewModel.enabledController,
      builder: (_, bool enabled, _) {
        return MyoroInput.number(
          min: 0,
          max: 50,
          configuration: MyoroInputConfiguration(
            label: label ?? MyoroInputConfiguration.labelDefaultValue,
            enabled: enabled,
            onChanged: (String text) => onChanged(double.parse(text)),
          ),
        );
      },
    );
  }
}
