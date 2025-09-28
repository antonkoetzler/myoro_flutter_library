part of '../myoro_selection_dropdowns_widget_showcase_screen.dart';

/// [MyoroSingleSelectionDropdown] of [MyoroSelectionDropdownsWidgetShowcaseScreen].
final class _SingleDropdown extends StatelessWidget {
  const _SingleDropdown();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSelectionDropdownsWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return ListenableBuilder(
          listenable: viewModel.state.menuViewModel.state,
          builder: (_, __) {
            return MyoroSingleSelectionDropdown(
              configuration: viewModel.buildSingleDropdownConfiguration(context),
              style: viewModel.buildStyle(context),
            );
          },
        );
      },
    );
  }
}
