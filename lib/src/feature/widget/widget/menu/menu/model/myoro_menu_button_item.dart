part of 'myoro_menu_item.dart';

/// [MyoroButton] variation of [MyoroMenuItem].
@myoroModel
class MyoroMenuButtonItem extends MyoroMenuItem with _$MyoroMenuButtonItemMixin {
  const MyoroMenuButtonItem({this.configuration, required this.builder});

  /// Configuration.
  final MyoroButtonConfiguration? configuration;

  /// Builder.
  final MyoroButtonBuilder builder;
}
