part of '../myoro_input.dart';

/// Label [Widget] of [MyoroInput].
final class _Label extends StatelessWidget {
  final MyoroInputController _controller;

  const _Label(this._controller);

  @override
  Widget build(BuildContext context) {
    final configuration = _controller.configuration;

    return Padding(
      padding: const EdgeInsets.only(
        // Needed to center the text of the label.
        bottom: 5,
      ),
      child: Text(
        configuration.label!,
        style: configuration.labelTextStyle ?? context.resolveThemeExtension<MyoroInputThemeExtension>().labelTextStyle,
      ),
    );
  }
}
