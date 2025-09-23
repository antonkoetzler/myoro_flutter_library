// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_menu_item.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

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
        other.buttonConfiguration == self.buttonConfiguration &&
        other.buttonBuilder == self.buttonBuilder &&
        other.iconTextButtonConfiguration == self.iconTextButtonConfiguration;
  }

  @override
  int get hashCode {
    return Object.hash(self.buttonConfiguration, self.buttonBuilder, self.iconTextButtonConfiguration);
  }

  @override
  String toString() =>
      'MyoroMenuItem(\n'
      '  buttonConfiguration: ${self.buttonConfiguration},\n'
      '  buttonBuilder: ${self.buttonBuilder},\n'
      '  iconTextButtonConfiguration: ${self.iconTextButtonConfiguration},\n'
      ');';
}
