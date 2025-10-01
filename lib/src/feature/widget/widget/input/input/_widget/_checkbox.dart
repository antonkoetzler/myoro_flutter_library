part of '../myoro_input.dart';

/// Checkbox option when [MyoroInputConfiguration.checkboxOnChanged] is provided.
final class _Checkbox extends StatelessWidget {
  const _Checkbox();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputViewModel>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final enabled = state.enabled;
    final checkboxKey = configuration.checkboxKey;
    final checkboxOnChanged = viewModel.checkboxOnChanged;

    return MyoroCheckbox(
      key: checkboxKey,
      configuration: MyoroCheckboxConfiguration(value: enabled, onChanged: checkboxOnChanged),
    );
  }
}
