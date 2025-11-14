part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonThemeExtension.backgroundColor] option of [MyoroButtonWidgetShowcaseScreen].
final class _BackgroundColorOption extends StatelessWidget {
  const _BackgroundColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      label: localization.storybookWidgetShowcaseOptionBackgroundColorLabel,
      selectedColor: viewModel.state.backgroundColor,
      onChanged: (color) => viewModel.state.backgroundColor = color,
    );
  }
}
