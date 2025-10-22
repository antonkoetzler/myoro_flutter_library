part of 'myoro_menu_item.dart';

/// [MyoroIconTextButton] variation of [MyoroMenuItem].
@myoroModel
class MyoroMenuIconTextButtonItem extends MyoroMenuItem with _$MyoroMenuIconTextButtonItemMixin {
  const MyoroMenuIconTextButtonItem({required this.configuration});

  /// Configuration.
  final MyoroIconTextButtonConfiguration configuration;
}
