part of '../myoro_input.dart';

/// Wrapper for the [ValueListenableBuilder] in [_MyoroInputState].
final class _Wrapper extends StatelessWidget {
  final MyoroInputViewModel _viewModel;
  MyoroInputConfiguration get _configuration => _viewModel._configuration;

  const _Wrapper(this._viewModel);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();

    return Row(
      spacing: themeExtension.spacing,
      children: [
        if (_configuration.checkboxOnChanged != null) _Checkbox(_viewModel),
        Expanded(child: _TextFormField(_viewModel)),
        if (_configuration.suffix != null) _configuration.suffix!,
      ],
    );
  }
}
