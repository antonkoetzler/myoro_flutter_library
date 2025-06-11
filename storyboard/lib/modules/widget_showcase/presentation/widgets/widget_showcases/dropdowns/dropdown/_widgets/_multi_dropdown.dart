part of '../myoro_dropdown_widget_showcase.dart';

/// [MyoroMultiDropdown] of [MyoroDropdownWidgetShowcase].
final class _MultiDropdown extends StatelessWidget {
  const _MultiDropdown();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseViewModel>();
    return MyoroMultiDropdown(configuration: viewModel.buildMultiDropdownConfiguration(context));
  }
}
