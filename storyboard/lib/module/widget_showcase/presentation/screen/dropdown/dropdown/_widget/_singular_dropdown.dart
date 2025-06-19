part of '../myoro_dropdown_widget_showcase.dart';

/// [MyoroSingularDropdown] of [MyoroDropdownWidgetShowcase].
final class _SingularDropdown extends StatelessWidget {
  const _SingularDropdown();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return ListenableBuilder(
          listenable: viewModel.menuViewModel.state,
          builder: (_, __) {
            return MyoroSingularDropdown(configuration: viewModel.buildSingularDropdownConfiguration(context));
          },
        );
      },
    );
  }
}
