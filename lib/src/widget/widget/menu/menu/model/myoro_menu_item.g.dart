// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_menu_item.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroMenuItem] once the code is generated.
///
/// ```dart
/// class MyoroMenuItem with _$MyoroMenuItemMixin {}
/// ```
mixin _$MyoroMenuItemMixin {
  MyoroMenuItem get self => this as MyoroMenuItem;

  @override
  bool operator ==(Object other) {
    return other is MyoroMenuItem &&
        other.runtimeType == runtimeType &&
        other.isSelected == self.isSelected &&
        other.iconConfiguration == self.iconConfiguration &&
        other.textConfiguration == self.textConfiguration &&
        other.builder == self.builder &&
        other.onTapDown == self.onTapDown &&
        other.onTapUp == self.onTapUp;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.isSelected,
      self.iconConfiguration,
      self.textConfiguration,
      self.builder,
      self.onTapDown,
      self.onTapUp,
    );
  }

  @override
  String toString() =>
      'MyoroMenuItem(\n'
      '  isSelected: ${self.isSelected},\n'
      '  iconConfiguration: ${self.iconConfiguration},\n'
      '  textConfiguration: ${self.textConfiguration},\n'
      '  builder: ${self.builder},\n'
      '  onTapDown: ${self.onTapDown},\n'
      '  onTapUp: ${self.onTapUp},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $MyoroMenuItemExtension on MyoroMenuItem {
  MyoroMenuItem copyWith({
    bool? isSelected,
    MyoroIconConfiguration? iconConfiguration,
    bool iconConfigurationProvided = true,
    MyoroTextConfiguration? textConfiguration,
    bool textConfigurationProvided = true,
    Widget Function(BuildContext, MyoroTapStatusEnum)? builder,
    bool builderProvided = true,
    void Function(TapDownDetails)? onTapDown,
    bool onTapDownProvided = true,
    void Function(TapUpDetails)? onTapUp,
    bool onTapUpProvided = true,
  }) {
    return MyoroMenuItem(
      isSelected: isSelected ?? self.isSelected,
      iconConfiguration:
          iconConfigurationProvided
              ? (iconConfiguration ?? self.iconConfiguration)
              : null,
      textConfiguration:
          textConfigurationProvided
              ? (textConfiguration ?? self.textConfiguration)
              : null,
      builder: builderProvided ? (builder ?? self.builder) : null,
      onTapDown: onTapDownProvided ? (onTapDown ?? self.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? self.onTapUp) : null,
    );
  }
}
