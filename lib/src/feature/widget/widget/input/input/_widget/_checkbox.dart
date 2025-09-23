part of '../myoro_input.dart';

/// Checkbox option when [MyoroInputConfiguration.checkboxOnChanged] is provided.
final class _Checkbox extends StatelessWidget {
  const _Checkbox(this._viewModel);

  final MyoroInputViewModel _viewModel;

  @override
  Widget build(context) {
    final state = _viewModel.state;
    final configuration = state.configuration;
    final enabled = state.enabled;
    final checkboxKey = configuration.checkboxKey;

    return MyoroCheckbox(
      key: checkboxKey,
      configuration: MyoroCheckboxConfiguration(value: enabled, onChanged: _viewModel.checkboxOnChanged),
    );
  }
}
