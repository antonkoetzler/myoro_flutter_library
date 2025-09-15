part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonThemeExtension.borderWidth] option of [MyoroButtonWidgetShowcaseScreen].
final class _BorderWidthOption extends StatelessWidget {
  const _BorderWidthOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Border width',
        initiallyEnabled: viewModel.state.borderWidth != null,
        initialValue: viewModel.state.borderWidth ?? 1.0,
        sliderOnChanged: (value) => viewModel.state.borderWidth = value,
        checkboxOnChanged: (enabled, value) => viewModel.state.borderWidth = enabled ? value : null,
      ),
    );
  }
}
