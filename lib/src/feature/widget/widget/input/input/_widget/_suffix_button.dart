part of '../widget/myoro_input.dart';

/// [InputDecoration.suffixIcon] of [MyoroInput].
final class _SuffixButton extends StatelessWidget {
  const _SuffixButton(this._icon, this._onTapUp);

  /// [IconData]
  final IconData _icon;

  /// [MyoroIconTextButtonConfiguration.onTapUp]
  final VoidCallback _onTapUp;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final style = context.watch<MyoroInputStyle>();
    final suffixButtonMargin = style.suffixButtonMargin ?? themeExtension.suffixButtonMargin ?? EdgeInsets.zero;
    final suffixButtonStyle =
        style.suffixButtonStyle ?? themeExtension.suffixButtonStyle ?? const MyoroIconTextButtonStyle();

    return Padding(
      padding: suffixButtonMargin,
      child: MyoroIconTextButton(style: suffixButtonStyle, onTapUp: (_, _) => _onTapUp(), icon: _icon),
    );
  }
}
