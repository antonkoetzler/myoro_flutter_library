// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_menu_item.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroMenuItemExtension on MyoroMenuItem {
  MyoroMenuItem copyWith({
    bool? isSelected,
    MyoroIconTextButtonIconConfiguration? iconConfiguration,
    bool iconConfigurationProvided = true,
    MyoroIconTextButtonTextConfiguration? textConfiguration,
    bool textConfigurationProvided = true,
    Widget Function(BuildContext, MyoroTapStatusEnum)? builder,
    bool builderProvided = true,
    void Function(TapDownDetails)? onTapDown,
    bool onTapDownProvided = true,
    void Function(TapUpDetails)? onTapUp,
    bool onTapUpProvided = true,
  }) {
    return MyoroMenuItem(
      isSelected: isSelected ?? this.isSelected,
      iconConfiguration:
          iconConfigurationProvided
              ? (iconConfiguration ?? this.iconConfiguration)
              : null,
      textConfiguration:
          textConfigurationProvided
              ? (textConfiguration ?? this.textConfiguration)
              : null,
      builder: builderProvided ? (builder ?? this.builder) : null,
      onTapDown: onTapDownProvided ? (onTapDown ?? this.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? this.onTapUp) : null,
    );
  }
}

/// Apply this mixin to [MyoroMenuItem] once the code is generated.
///
/// ```dart
/// class MyoroMenuItem with $MyoroMenuItemMixin {}
/// ```
mixin $MyoroMenuItemMixin {
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
