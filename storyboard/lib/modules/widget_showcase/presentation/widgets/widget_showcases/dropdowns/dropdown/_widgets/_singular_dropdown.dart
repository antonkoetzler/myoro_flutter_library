part of '../myoro_dropdown_widget_showcase.dart';

/// [MyoroSingularDropdown] of [MyoroDropdownWidgetShowcase].
final class _SingularDropdown extends StatelessWidget {
  const _SingularDropdown();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseViewModel>();
    return MyoroSingularDropdown(configuration: viewModel.buildSingularDropdownConfiguration(context));
  }
}
