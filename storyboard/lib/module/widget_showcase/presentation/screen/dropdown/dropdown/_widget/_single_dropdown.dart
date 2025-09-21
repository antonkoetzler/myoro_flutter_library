part of '../myoro_dropdowns_widget_showcase_screen.dart';

/// [MyoroSingleDropdown] of [MyoroDropdownsWidgetShowcaseScreen].
final class _SingleDropdown extends StatelessWidget {
  const _SingleDropdown();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownsWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return ListenableBuilder(
          listenable: viewModel.state.menuViewModel.state,
          builder: (_, __) {
            return MyoroSingleDropdown(
              configuration: viewModel.buildSingleDropdownConfiguration(context),
              themeExtension: viewModel.buildThemeExtension(context),
            );
          },
        );
      },
    );
  }
}
