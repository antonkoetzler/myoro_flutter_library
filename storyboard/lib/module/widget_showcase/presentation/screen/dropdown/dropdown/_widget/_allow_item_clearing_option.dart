part of '../myoro_dropdowns_widget_showcase_screen.dart';

/// [MyoroDropdownConfiguration.allowItemClearing] option of [MyoroDropdownsWidgetShowcaseScreen].
final class _AllowItemClearingOption extends StatelessWidget {
  const _AllowItemClearingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownsWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Allow item clearing?',
        value: viewModel.state.allowItemClearing,
        onChanged: (value) => viewModel.state.allowItemClearing = value,
      ),
    );
  }
}
