part of '../myoro_input.dart';

/// Wrapper for the [ValueListenableBuilder] in [_MyoroInputState].
final class _Wrapper extends StatelessWidget {
  final MyoroInputViewModel _viewModel;

  const _Wrapper(this._viewModel);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final style = context.read<MyoroInputStyle>();
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;

    final state = _viewModel.state;
    final configuration = state.configuration;
    final inputKey = configuration.inputKey;

    return Row(
      spacing: spacing,
      children: [
        if (_viewModel.state.configuration.checkboxOnChanged != null) _Checkbox(_viewModel),
        Expanded(key: inputKey, child: _TextFormField(_viewModel)),
        if (_viewModel.state.configuration.suffix != null) _viewModel.state.configuration.suffix!,
      ],
    );
  }
}
