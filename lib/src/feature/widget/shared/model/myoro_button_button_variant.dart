part of 'myoro_button_variant.dart';

/// [MyoroButton] variation of [MyoroButtonVariant].
@myoroModel
class MyoroButtonButtonVariant extends MyoroButtonVariant with _$MyoroButtonButtonVariantMixin {
  /// Default value of [isLoading].
  static const isLoadingDefaultValue = MyoroButtonVariant.isLoadingDefaultValue;

  /// Default constructor.
  const MyoroButtonButtonVariant({
    super.cursor,
    super.tooltipText,
    super.onTapDown,
    super.onTapUp,
    super.isLoading = isLoadingDefaultValue,
    required this.builder,
  });

  /// Builder.
  final MyoroButtonBuilder builder;
}
