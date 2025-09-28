part of '../myoro_selection_dropdowns_widget_showcase_screen.dart';

/// [MyoroSelectionDropdownConfiguration.allowItemClearing] option of [MyoroSelectionDropdownsWidgetShowcaseScreen].
final class _AllowItemClearingOption extends StatelessWidget {
  const _AllowItemClearingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSelectionDropdownsWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Allow item clearing?',
        value: viewModel.state.allowItemClearing,
        onChanged: (value) => viewModel.state.allowItemClearing = value,
      ),
    );
  }
}
