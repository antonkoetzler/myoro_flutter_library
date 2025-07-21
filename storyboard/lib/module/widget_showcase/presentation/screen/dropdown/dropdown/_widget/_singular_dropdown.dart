part of '../myoro_dropdown_widget_showcase_screen.dart';

/// [MyoroSingularDropdown] of [MyoroDropdownWidgetShowcaseScreen].
final class _SingularDropdown extends StatelessWidget {
  const _SingularDropdown();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return ListenableBuilder(
          listenable: viewModel.state.menuViewModel.state,
          builder: (_, __) {
            return MyoroSingularDropdown(configuration: viewModel.buildSingularDropdownConfiguration(context));
          },
        );
      },
    );
  }
}
