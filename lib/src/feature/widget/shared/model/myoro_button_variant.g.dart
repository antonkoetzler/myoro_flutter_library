// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_button_variant.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroButtonButtonVariant] once the code is generated.
///
/// ```dart
/// class MyoroButtonButtonVariant with _$MyoroButtonButtonVariantMixin {}
/// ```
mixin _$MyoroButtonButtonVariantMixin {
  MyoroButtonButtonVariant get self => this as MyoroButtonButtonVariant;

  MyoroButtonButtonVariant copyWith({
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
    return MyoroButtonButtonVariant(
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
    return other is MyoroButtonButtonVariant &&
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
      'MyoroButtonButtonVariant(\n'
      '  builder: ${self.builder},\n'
      '  cursor: ${self.cursor},\n'
      '  tooltipText: ${self.tooltipText},\n'
      '  onTapDown: ${self.onTapDown},\n'
      '  onTapUp: ${self.onTapUp},\n'
      '  isLoading: ${self.isLoading},\n'
      ');';
}

// coverage:ignore-file

/// Apply this mixin to [MyoroButtonIconTextButtonVariant] once the code is generated.
///
/// ```dart
/// class MyoroButtonIconTextButtonVariant with _$MyoroButtonIconTextButtonVariantMixin {}
/// ```
mixin _$MyoroButtonIconTextButtonVariantMixin {
  MyoroButtonIconTextButtonVariant get self => this as MyoroButtonIconTextButtonVariant;

  MyoroButtonIconTextButtonVariant copyWith({
    bool? invert,
    MyoroIconConfiguration? iconConfiguration,
    bool iconConfigurationProvided = true,
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
    return MyoroButtonIconTextButtonVariant(
      invert: invert ?? self.invert,
      iconConfiguration: iconConfigurationProvided ? (iconConfiguration ?? self.iconConfiguration) : null,
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
    return other is MyoroButtonIconTextButtonVariant &&
        other.runtimeType == runtimeType &&
        other.invert == self.invert &&
        other.iconConfiguration == self.iconConfiguration &&
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
      'MyoroButtonIconTextButtonVariant(\n'
      '  invert: ${self.invert},\n'
      '  iconConfiguration: ${self.iconConfiguration},\n'
      '  textConfiguration: ${self.textConfiguration},\n'
      '  cursor: ${self.cursor},\n'
      '  tooltipText: ${self.tooltipText},\n'
      '  onTapDown: ${self.onTapDown},\n'
      '  onTapUp: ${self.onTapUp},\n'
      '  isLoading: ${self.isLoading},\n'
      ');';
}
