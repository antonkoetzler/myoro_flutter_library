part of '../myoro_input.dart';

/// Checkbox option when [MyoroInputConfiguration.checkboxOnChanged] is provided.
final class _Checkbox extends StatelessWidget {
  const _Checkbox(this._enabled);

  final bool _enabled;

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputViewModel>();
    final checkboxOnChanged = viewModel.checkboxOnChanged;

    return MyoroCheckbox(value: _enabled, onChanged: checkboxOnChanged);
  }
}
