part of '../myoro_basic_divider_widget_showcase_screen.dart';

/// [MyoroBasicDividerConfiguration.shortValue] option of [MyoroBasicDividerWidgetShowcaseScreen].
final class _ShortValueOption extends StatelessWidget {
  const _ShortValueOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroBasicDividerWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Short value',
        checkboxOnChanged: (enabled, value) => viewModel.state.shortValue = enabled ? value : null,
        sliderOnChanged: (value) => viewModel.state.shortValue = value,
      ),
    );
  }
}
