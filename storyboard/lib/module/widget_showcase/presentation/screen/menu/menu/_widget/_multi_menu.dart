part of '../myoro_menus_widget_showcase_screen.dart';

/// [MyoroMultiMenu] of [MyoroMenusWidgetShowcaseScreen].
final class _MultiMenu extends StatelessWidget {
  const _MultiMenu();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenusWidgetShowcaseScreenViewModel>();
    final multiMenuConfiguration = viewModel.multiMenuConfiguration;
    return MyoroMultiMenu<String>(configuration: multiMenuConfiguration(context));
  }
}
