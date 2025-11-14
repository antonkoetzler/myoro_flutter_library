// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_menu_item.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroMenuButtonItem] once the code is generated.
///
/// ```dart
/// class MyoroMenuButtonItem with _$MyoroMenuButtonItemMixin {}
/// ```
mixin _$MyoroMenuButtonItemMixin {
  MyoroMenuButtonItem get self => this as MyoroMenuButtonItem;

  MyoroMenuButtonItem copyWith({
    MyoroButtonBuilder? builder,
    MouseCursor? cursor,
    bool cursorProvided = true,
    String? tooltipText,
    MyoroButtonOnTapDown? onTapDown,
    bool onTapDownProvided = true,
    MyoroButtonOnTapUp? onTapUp,
    bool onTapUpProvided = true,
    bool? isLoading,
  }) {
    return MyoroMenuButtonItem(
      builder: builder ?? self.builder,
      cursor: cursorProvided ? (cursor ?? self.cursor) : null,
      tooltipText: tooltipText ?? self.tooltipText,
      onTapDown: onTapDownProvided ? (onTapDown ?? self.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? self.onTapUp) : null,
      isLoading: isLoading ?? self.isLoading,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMenuButtonItem &&
        other.runtimeType == runtimeType &&
        other.builder == self.builder &&
        other.cursor == self.cursor &&
        other.tooltipText == self.tooltipText &&
        other.onTapDown == self.onTapDown &&
        other.onTapUp == self.onTapUp &&
        other.isLoading == self.isLoading;
  }

  @override
  int get hashCode {
    return Object.hash(self.builder, self.cursor, self.tooltipText, self.onTapDown, self.onTapUp, self.isLoading);
  }

  @override
  String toString() =>
      'MyoroMenuButtonItem(\n'
      '  builder: ${self.builder},\n'
      '  cursor: ${self.cursor},\n'
      '  tooltipText: ${self.tooltipText},\n'
      '  onTapDown: ${self.onTapDown},\n'
      '  onTapUp: ${self.onTapUp},\n'
      '  isLoading: ${self.isLoading},\n'
      ');';
}

// coverage:ignore-file

/// Apply this mixin to [MyoroMenuIconTextButtonItem] once the code is generated.
///
/// ```dart
/// class MyoroMenuIconTextButtonItem with _$MyoroMenuIconTextButtonItemMixin {}
/// ```
mixin _$MyoroMenuIconTextButtonItemMixin {
  MyoroMenuIconTextButtonItem get self => this as MyoroMenuIconTextButtonItem;

  MyoroMenuIconTextButtonItem copyWith({
    bool? invert,
    MyoroIconConfiguration? iconConfiguration,
    bool iconConfigurationProvided = true,
    String? text,
    MyoroTextConfiguration? textConfiguration,
    bool textConfigurationProvided = true,
    MouseCursor? cursor,
    bool cursorProvided = true,
    String? tooltipText,
    MyoroButtonOnTapDown? onTapDown,
    bool onTapDownProvided = true,
    MyoroButtonOnTapUp? onTapUp,
    bool onTapUpProvided = true,
    bool? isLoading,
  }) {
    return MyoroMenuIconTextButtonItem(
      invert: invert ?? self.invert,
      iconConfiguration: iconConfigurationProvided ? (iconConfiguration ?? self.iconConfiguration) : null,
      text: text ?? self.text,
      textConfiguration: textConfigurationProvided ? (textConfiguration ?? self.textConfiguration) : null,
      cursor: cursorProvided ? (cursor ?? self.cursor) : null,
      tooltipText: tooltipText ?? self.tooltipText,
      onTapDown: onTapDownProvided ? (onTapDown ?? self.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? self.onTapUp) : null,
      isLoading: isLoading ?? self.isLoading,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMenuIconTextButtonItem &&
        other.runtimeType == runtimeType &&
        other.invert == self.invert &&
        other.iconConfiguration == self.iconConfiguration &&
        other.text == self.text &&
        other.textConfiguration == self.textConfiguration &&
        other.cursor == self.cursor &&
        other.tooltipText == self.tooltipText &&
        other.onTapDown == self.onTapDown &&
        other.onTapUp == self.onTapUp &&
        other.isLoading == self.isLoading;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.invert,
      self.iconConfiguration,
      self.text,
      self.textConfiguration,
      self.cursor,
      self.tooltipText,
      self.onTapDown,
      self.onTapUp,
      self.isLoading,
    );
  }

  @override
  String toString() =>
      'MyoroMenuIconTextButtonItem(\n'
      '  invert: ${self.invert},\n'
      '  iconConfiguration: ${self.iconConfiguration},\n'
      '  text: ${self.text},\n'
      '  textConfiguration: ${self.textConfiguration},\n'
      '  cursor: ${self.cursor},\n'
      '  tooltipText: ${self.tooltipText},\n'
      '  onTapDown: ${self.onTapDown},\n'
      '  onTapUp: ${self.onTapUp},\n'
      '  isLoading: ${self.isLoading},\n'
      ');';
}
