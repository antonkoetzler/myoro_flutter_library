part of '../myoro_card_widget_showcase_screen.dart';

/// [MyoroCardThemeExtension.titleTextStyle] option of [MyoroCardWidgetShowcaseScreen].
final class _TitleTextStyleOption extends StatelessWidget {
  const _TitleTextStyleOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCardWidgetShowcaseScreenViewModel>();

    return TextStyleWidgetShowcaseOption(
      label: 'Title text style',
      selectedItem: viewModel.state.titleTextStyle,
      onChanged: (textStyle) => viewModel.state.titleTextStyle = textStyle,
      checkboxOnChanged:
          (enabled, _) => viewModel.state.titleTextStyle = enabled ? null : viewModel.state.titleTextStyle,
    );
  }
}
