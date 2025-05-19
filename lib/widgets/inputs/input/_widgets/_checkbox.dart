part of '../myoro_input.dart';

/// Checkbox option when [MyoroInputConfiguration.checkboxOnChanged] is provided.
final class _Checkbox extends StatelessWidget {
  final MyoroInputViewModel _viewModel;
  bool get _enabled => _viewModel._enabledNotifier.value;

  const _Checkbox(this._viewModel);

  @override
  Widget build(BuildContext context) {
    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(initialValue: _enabled, onChanged: _viewModel._checkboxOnChanged),
    );
  }
}
