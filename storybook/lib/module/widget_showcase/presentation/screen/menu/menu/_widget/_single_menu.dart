part of '../myoro_menus_widget_showcase_screen.dart';

/// [MyoroSingleMenu] of [MyoroMenusWidgetShowcaseScreen].
final class _SingleMenu extends StatelessWidget {
  const _SingleMenu();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenusWidgetShowcaseScreenViewModel>();
    return MyoroSingleMenu<String>(
      configuration: viewModel.singleMenuConfiguration(context),
      style: viewModel.buildStyle(context),
    );
  }
}
