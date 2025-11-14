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
    this.iconConfiguration,
    this.text = textDefaultValue,
    this.textConfiguration,
  });

  /// Whether or not to invert the icon and text.
  ///
  /// Only effective when both [iconConfiguration] and [textConfiguration] is provided.
  final bool invert;

  /// Icon configuration of the [MyoroIconTextButton].
  final MyoroIconConfiguration? iconConfiguration;

  /// Text of the [MyoroIconTextButton].
  final String text;

  /// Text configuration of the [MyoroIconTextButton].
  final MyoroTextConfiguration? textConfiguration;
}
