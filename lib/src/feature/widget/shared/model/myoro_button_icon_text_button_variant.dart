part of 'myoro_button_variant.dart';

/// [MyoroIconTextButton] variation of [MyoroButtonVariant].
@myoroModel
class MyoroButtonIconTextButtonVariant extends MyoroButtonVariant with _$MyoroButtonIconTextButtonVariantMixin {
  /// Default value of [isLoading].
  static const isLoadingDefaultValue = MyoroButtonVariant.isLoadingDefaultValue;

  /// Default value of [invert].
  static const invertDefaultValue = MyoroIconTextButton.invertDefaultValue;

  /// Default constructor.
  const MyoroButtonIconTextButtonVariant({
    super.cursor,
    super.tooltipText,
    super.onTapDown,
    super.onTapUp,
    super.isLoading = isLoadingDefaultValue,
    this.invert = invertDefaultValue,
    this.iconConfiguration,
    this.textConfiguration,
  });

  /// Whether or not to invert the icon and text.
  ///
  /// Only effective when both [iconConfiguration] and [textConfiguration] is provided.
  final bool invert;

  /// Icon configuration of the [MyoroIconTextButton].
  final MyoroIconConfiguration? iconConfiguration;

  /// Text configuration of the [MyoroIconTextButton].
  final MyoroTextConfiguration? textConfiguration;
}
