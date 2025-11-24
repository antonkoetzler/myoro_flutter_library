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
    IconData? icon,
    bool iconProvided = true,
    double? iconSize,
    bool iconSizeProvided = true,
    String? text,
    MyoroTextStyle? textStyle,
    bool textStyleProvided = true,
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
      icon: iconProvided ? (icon ?? self.icon) : null,
      iconSize: iconSizeProvided ? (iconSize ?? self.iconSize) : null,
      text: text ?? self.text,
      textStyle: textStyleProvided ? (textStyle ?? self.textStyle) : null,
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
        other.icon == self.icon &&
        other.iconSize == self.iconSize &&
        other.text == self.text &&
        other.textStyle == self.textStyle &&
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
      self.icon,
      self.iconSize,
      self.text,
      self.textStyle,
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
      '  icon: ${self.icon},\n'
      '  iconSize: ${self.iconSize},\n'
      '  text: ${self.text},\n'
      '  textStyle: ${self.textStyle},\n'
      '  cursor: ${self.cursor},\n'
      '  tooltipText: ${self.tooltipText},\n'
      '  onTapDown: ${self.onTapDown},\n'
      '  onTapUp: ${self.onTapUp},\n'
      '  isLoading: ${self.isLoading},\n'
      ');';
}

// coverage:ignore-file

/// Apply this mixin to [MyoroMenuCheckboxItem] once the code is generated.
///
/// ```dart
/// class MyoroMenuCheckboxItem with _$MyoroMenuCheckboxItemMixin {}
/// ```
mixin _$MyoroMenuCheckboxItemMixin {
  MyoroMenuCheckboxItem get self => this as MyoroMenuCheckboxItem;

  MyoroMenuCheckboxItem copyWith({
    MyoroCheckboxStyle? style,
    String? label,
    bool? value,
    MyoroCheckboxOnChanged? onChanged,
    MouseCursor? cursor,
    bool cursorProvided = true,
    String? tooltipText,
    MyoroButtonOnTapDown? onTapDown,
    bool onTapDownProvided = true,
    MyoroButtonOnTapUp? onTapUp,
    bool onTapUpProvided = true,
    bool? isLoading,
  }) {
    return MyoroMenuCheckboxItem(
      style: style ?? self.style,
      label: label ?? self.label,
      value: value ?? self.value,
      onChanged: onChanged ?? self.onChanged,
      cursor: cursorProvided ? (cursor ?? self.cursor) : null,
      tooltipText: tooltipText ?? self.tooltipText,
      onTapDown: onTapDownProvided ? (onTapDown ?? self.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? self.onTapUp) : null,
      isLoading: isLoading ?? self.isLoading,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMenuCheckboxItem &&
        other.runtimeType == runtimeType &&
        other.style == self.style &&
        other.label == self.label &&
        other.value == self.value &&
        other.onChanged == self.onChanged &&
        other.cursor == self.cursor &&
        other.tooltipText == self.tooltipText &&
        other.onTapDown == self.onTapDown &&
        other.onTapUp == self.onTapUp &&
        other.isLoading == self.isLoading;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.style,
      self.label,
      self.value,
      self.onChanged,
      self.cursor,
      self.tooltipText,
      self.onTapDown,
      self.onTapUp,
      self.isLoading,
    );
  }

  @override
  String toString() =>
      'MyoroMenuCheckboxItem(\n'
      '  style: ${self.style},\n'
      '  label: ${self.label},\n'
      '  value: ${self.value},\n'
      '  onChanged: ${self.onChanged},\n'
      '  cursor: ${self.cursor},\n'
      '  tooltipText: ${self.tooltipText},\n'
      '  onTapDown: ${self.onTapDown},\n'
      '  onTapUp: ${self.onTapUp},\n'
      '  isLoading: ${self.isLoading},\n'
      ');';
}

// coverage:ignore-file

/// Apply this mixin to [MyoroMenuRadioItem] once the code is generated.
///
/// ```dart
/// class MyoroMenuRadioItem with _$MyoroMenuRadioItemMixin {}
/// ```
mixin _$MyoroMenuRadioItemMixin {
  MyoroMenuRadioItem get self => this as MyoroMenuRadioItem;

  MyoroMenuRadioItem copyWith({
    MyoroRadioStyle? style,
    String? label,
    bool? value,
    MyoroRadioOnChanged? onChanged,
    MouseCursor? cursor,
    bool cursorProvided = true,
    String? tooltipText,
    MyoroButtonOnTapDown? onTapDown,
    bool onTapDownProvided = true,
    MyoroButtonOnTapUp? onTapUp,
    bool onTapUpProvided = true,
    bool? isLoading,
  }) {
    return MyoroMenuRadioItem(
      style: style ?? self.style,
      label: label ?? self.label,
      value: value ?? self.value,
      onChanged: onChanged ?? self.onChanged,
      cursor: cursorProvided ? (cursor ?? self.cursor) : null,
      tooltipText: tooltipText ?? self.tooltipText,
      onTapDown: onTapDownProvided ? (onTapDown ?? self.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? self.onTapUp) : null,
      isLoading: isLoading ?? self.isLoading,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMenuRadioItem &&
        other.runtimeType == runtimeType &&
        other.style == self.style &&
        other.label == self.label &&
        other.value == self.value &&
        other.onChanged == self.onChanged &&
        other.cursor == self.cursor &&
        other.tooltipText == self.tooltipText &&
        other.onTapDown == self.onTapDown &&
        other.onTapUp == self.onTapUp &&
        other.isLoading == self.isLoading;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.style,
      self.label,
      self.value,
      self.onChanged,
      self.cursor,
      self.tooltipText,
      self.onTapDown,
      self.onTapUp,
      self.isLoading,
    );
  }

  @override
  String toString() =>
      'MyoroMenuRadioItem(\n'
      '  style: ${self.style},\n'
      '  label: ${self.label},\n'
      '  value: ${self.value},\n'
      '  onChanged: ${self.onChanged},\n'
      '  cursor: ${self.cursor},\n'
      '  tooltipText: ${self.tooltipText},\n'
      '  onTapDown: ${self.onTapDown},\n'
      '  onTapUp: ${self.onTapUp},\n'
      '  isLoading: ${self.isLoading},\n'
      ');';
}
