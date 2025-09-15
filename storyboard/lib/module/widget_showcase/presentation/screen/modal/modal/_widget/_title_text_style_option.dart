part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalThemeExtension.titleTextStyle] option of [MyoroModalWidgetShowcaseScreen].
final class _TitleTextStyleOption extends StatelessWidget {
  const _TitleTextStyleOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();

    return TextStyleWidgetShowcaseOption(
      label: 'Title text style',
      selectedItem: viewModel.state.titleTextStyle,
      onChanged: (textStyle) => viewModel.state.titleTextStyle = textStyle,
      checkboxOnChanged:
          (enabled, _) => viewModel.state.titleTextStyle = enabled ? null : viewModel.state.titleTextStyle,
    );
  }
}
