part of '../myoro_dropdown_widget_showcase_screen.dart';

/// [MyoroMultiDropdown] of [MyoroDropdownWidgetShowcaseScreen].
final class _MultiDropdown extends StatelessWidget {
  const _MultiDropdown();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return ListenableBuilder(
          listenable: viewModel.state.menuViewModel.state,
          builder: (_, __) {
            return MyoroMultiDropdown(configuration: viewModel.buildMultiDropdownConfiguration(context));
          },
        );
      },
    );
  }
}
