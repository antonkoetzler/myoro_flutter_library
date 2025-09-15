part of '../myoro_menus_widget_showcase_screen.dart';

/// [MyoroMenuThemeExtension.dialogTextStyle] option of [MyoroMenusWidgetShowcaseScreen].
final class _DialogTextStyleOption extends StatelessWidget {
  const _DialogTextStyleOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenusWidgetShowcaseScreenViewModel>();

    return TextStyleWidgetShowcaseOption(
      label: 'Dialog text style',
      selectedItem: viewModel.state.dialogTextStyle,
      onChanged: (textStyle) => viewModel.state.dialogTextStyle = textStyle,
      checkboxOnChanged:
          (enabled, _) =>
              viewModel.state.dialogTextStyle = enabled ? null : viewModel.state.dialogTextStyle,
    );
  }
}
