part of '../myoro_input.dart';

/// Wrapper for the [ValueListenableBuilder] in [_MyoroInputState].
final class _Wrapper extends StatelessWidget {
  final MyoroInputController _controller;

  const _Wrapper(this._controller);

  @override
  Widget build(BuildContext context) {
    final configuration = _controller.configuration;

    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();

    return Row(
      spacing: themeExtension.spacing,
      children: [
        if (configuration.checkboxOnChanged != null) _Checkbox(_controller),
        Expanded(child: _TextFormField(_controller)),
        if (configuration.suffix != null) configuration.suffix!,
      ],
    );
  }
}
