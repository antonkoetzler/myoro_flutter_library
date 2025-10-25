part of 'myoro_menu_item.dart';

/// [MyoroButton] variation of [MyoroMenuItem].
@myoroModel
class MyoroMenuButtonItem extends MyoroMenuItem with _$MyoroMenuButtonItemMixin {
  /// Default value of [isLoading].
  static const isLoadingDefaultValue = MyoroMenuItem.isLoadingDefaultValue;

  /// Default constructor.
  const MyoroMenuButtonItem({
    super.cursor,
    super.tooltipConfiguration,
    super.onTapDown,
    super.onTapUp,
    super.isLoading = isLoadingDefaultValue,
    required this.builder,
  });

  /// Builder.
  final MyoroButtonBuilder builder;
}
