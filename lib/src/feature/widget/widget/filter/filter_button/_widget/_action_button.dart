part of '../bundle/myoro_field_button_bundle.dart';

/// Action button of a filter button.
final class _ActionButton extends StatelessWidget {
  const _ActionButton({required this.style, this.icon, this.text = kMyoroEmptyString, this.onTapUp});

  /// Style.
  final MyoroIconTextButtonStyle style;

  /// Icon.
  final IconData? icon;

  /// Text.
  final String text;

  /// On tap up.
  final MyoroButtonOnTapUp? onTapUp;

  /// Build function.
  @override
  Widget build(context) {
    return MyoroIconTextButton(style: style.secondary(context), icon: icon, text: text, onTapUp: onTapUp);
  }
}
