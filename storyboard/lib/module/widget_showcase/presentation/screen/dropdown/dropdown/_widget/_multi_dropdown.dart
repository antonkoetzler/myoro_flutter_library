part of '../myoro_dropdowns_widget_showcase_screen.dart';

/// [MyoroMultiDropdown] of [MyoroDropdownsWidgetShowcaseScreen].
final class _MultiDropdown extends StatelessWidget {
  const _MultiDropdown();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownsWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return ListenableBuilder(
          listenable: viewModel.state.menuViewModel.state,
          builder:
              (_, _) => MyoroMultiDropdown(
                configuration: viewModel.buildMultiDropdownConfiguration(context),
                themeExtension: viewModel.buildThemeExtension(context),
              ),
        );
      },
    );
  }
}
