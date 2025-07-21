part of '../myoro_dropdown_widget_showcase_screen.dart';

/// [MyoroDropdownConfiguration.allowItemClearing] option of [MyoroDropdownWidgetShowcaseScreen].
final class _AllowItemClearingOption extends StatelessWidget {
  const _AllowItemClearingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Allow item clearing?',
        value: viewModel.state.allowItemClearing,
        onChanged: (value) => viewModel.state.allowItemClearing = value,
      ),
    );
  }
}
