part of '../myoro_dropdown_widget_showcase.dart';

/// [MyoroDropdownConfiguration.allowItemClearing] option of [MyoroDropdownWidgetShowcase].
final class _AllowItemClearingOption extends StatelessWidget {
  const _AllowItemClearingOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Allow item clearing?',
        value: viewModel.allowItemClearing,
        onChanged: (value) => viewModel.allowItemClearing = value,
      ),
    );
  }
}
