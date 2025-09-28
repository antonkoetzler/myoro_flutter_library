part of '../myoro_selection_dropdowns_widget_showcase_screen.dart';

/// [MyoroMultiSelectionDropdown] of [MyoroSelectionDropdownsWidgetShowcaseScreen].
final class _MultiDropdown extends StatelessWidget {
  const _MultiDropdown();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSelectionDropdownsWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return ListenableBuilder(
          listenable: viewModel.state.menuViewModel.state,
          builder:
              (_, _) => MyoroMultiSelectionDropdown(
                configuration: viewModel.buildMultiDropdownConfiguration(context),
                style: viewModel.buildStyle(context),
              ),
        );
      },
    );
  }
}
