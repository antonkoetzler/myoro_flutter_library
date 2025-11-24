part of 'myoro_menu_item.dart';

/// [MyoroIconTextButton] variation of [MyoroMenuItem].
@myoroModel
class MyoroMenuIconTextButtonItem extends MyoroMenuItem with _$MyoroMenuIconTextButtonItemMixin {
  /// Default value of [isLoading].
  static const isLoadingDefaultValue = MyoroMenuItem.isLoadingDefaultValue;

  /// Default value of [invert].
  static const invertDefaultValue = MyoroIconTextButton.invertDefaultValue;

  /// Default value of [text].
  static const textDefaultValue = kMyoroEmptyString;

  /// Default constructor.
  const MyoroMenuIconTextButtonItem({
    super.cursor,
    super.tooltipText,
    super.onTapDown,
    super.onTapUp,
    super.isLoading = isLoadingDefaultValue,
    this.invert = invertDefaultValue,
    this.icon,
    this.iconSize,
    this.text = textDefaultValue,
    this.textStyle,
  });

  /// Whether or not to invert the icon and text.
  ///
  /// Only effective when both [iconStyle] and [textStyle] is provided.
  final bool invert;

  /// [MyoroIconTextButton.icon].
  final IconData? icon;

  /// [MyoroIconTextButtonStyle.iconSize].
  final double? iconSize;

  /// [MyoroIconTextButton.text].
  final String text;

  /// [MyoroIconTextButtonStyle.textStyle].
  final MyoroTextStyle? textStyle;
}
