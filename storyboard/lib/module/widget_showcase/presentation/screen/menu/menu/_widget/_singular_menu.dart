part of '../myoro_menus_widget_showcase_screen.dart';

/// [MyoroSingularMenu] of [MyoroMenusWidgetShowcaseScreen].
final class _SingularMenu extends StatelessWidget {
  const _SingularMenu();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenusWidgetShowcaseScreenViewModel>();
    final singularMenuConfiguration = viewModel.singluarMenuConfiguration;
    return MyoroSingularMenu<String>(configuration: singularMenuConfiguration(context));
  }
}
