part of '../myoro_input.dart';

/// Wrapper for the [ValueListenableBuilder] in [_MyoroInputState].
final class _Wrapper extends StatelessWidget {
  final MyoroInputViewModel _viewModel;

  const _Wrapper(this._viewModel);

  @override
  Widget build(BuildContext context) {
    final configuration = _viewModel.configuration;

    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();

    return Row(
      spacing: themeExtension.spacing,
      children: [
        if (configuration.checkboxOnChanged != null) _Checkbox(_viewModel),
        Expanded(child: _TextFormField(_viewModel)),
        if (configuration.suffix != null) configuration.suffix!,
      ],
    );
  }
}
