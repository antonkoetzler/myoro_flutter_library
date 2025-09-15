part of '../myoro_menus_widget_showcase_screen.dart';

/// [MyoroSingularMenu] of [MyoroMenusWidgetShowcaseScreen].
final class _SingularMenu extends StatelessWidget {
  const _SingularMenu();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenusWidgetShowcaseScreenViewModel>();
    return MyoroSingularMenu<String>(
      configuration: viewModel.singluarMenuConfiguration(context),
      themeExtension: viewModel.buildThemeExtension(context),
    );
  }
}
