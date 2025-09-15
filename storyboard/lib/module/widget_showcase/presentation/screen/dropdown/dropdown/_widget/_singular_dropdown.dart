part of '../myoro_dropdowns_widget_showcase_screen.dart';

/// [MyoroSingularDropdown] of [MyoroDropdownsWidgetShowcaseScreen].
final class _SingularDropdown extends StatelessWidget {
  const _SingularDropdown();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownsWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return ListenableBuilder(
          listenable: viewModel.state.menuViewModel.state,
          builder: (_, __) {
            return MyoroSingularDropdown(
              configuration: viewModel.buildSingularDropdownConfiguration(context),
              themeExtension: viewModel.buildThemeExtension(context),
            );
          },
        );
      },
    );
  }
}
