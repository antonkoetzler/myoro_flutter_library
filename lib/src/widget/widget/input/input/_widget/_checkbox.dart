part of '../myoro_input.dart';

/// Checkbox option when [MyoroInputConfiguration.checkboxOnChanged] is provided.
final class _Checkbox extends StatelessWidget {
  final MyoroInputViewModel _viewModel;

  const _Checkbox(this._viewModel);

  @override
  Widget build(BuildContext context) {
    final enabled = _viewModel.enabled;

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(value: enabled, onChanged: _viewModel.checkboxOnChanged),
    );
  }
}
