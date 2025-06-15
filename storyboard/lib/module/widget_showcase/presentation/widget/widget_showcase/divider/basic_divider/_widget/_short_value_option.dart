part of '../myoro_basic_divider_widget_showcase.dart';

/// [MyoroBasicDividerConfiguration.shortValue] option of [MyoroBasicDividerWidgetShowcase].
final class _ShortValueOption extends StatelessWidget {
  const _ShortValueOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroBasicDividerWidgetShowcaseViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Short value',
        checkboxOnChanged: (enabled, value) => viewModel.shortValue = enabled ? value : null,
        sliderOnChanged: (value) => viewModel.shortValue = value,
      ),
    );
  }
}
