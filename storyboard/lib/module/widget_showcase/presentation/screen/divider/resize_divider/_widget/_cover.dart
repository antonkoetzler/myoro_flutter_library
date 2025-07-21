part of '../myoro_resize_divider_widget_showcase_screen.dart';

/// [Widget] covering [_Kitty] in [MyoroResizeDividerWidgetShowcaseScreen].
final class _Cover extends StatelessWidget {
  const _Cover();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroResizeDividerWidgetShowcaseScreenThemeExtension>();
    final viewModel = context.read<MyoroResizeDividerWidgetShowcaseScreenViewModel>();

    return ValueListenableBuilder(
      valueListenable: viewModel.state.coverWidthController,
      builder: (_, double width, _) {
        return Container(color: themeExtension.coverColor, height: double.infinity, width: width);
      },
    );
  }
}
