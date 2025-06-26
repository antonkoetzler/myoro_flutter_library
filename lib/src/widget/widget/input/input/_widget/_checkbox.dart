part of '../myoro_input.dart';

/// Checkbox option when [MyoroInputConfiguration.checkboxOnChanged] is provided.
final class _Checkbox extends StatelessWidget {
  final MyoroInputViewModel _viewModel;

  const _Checkbox(this._viewModel);

  @override
  Widget build(BuildContext context) {
    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        value: _viewModel.state.enabled,
        onChanged: _viewModel.checkboxOnChanged,
      ),
    );
  }
}
