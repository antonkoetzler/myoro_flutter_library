// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_tab_view_tab.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroTabViewTab] once the code is generated.
///
/// ```dart
/// class MyoroTabViewTab with _$MyoroTabViewTabMixin {}
/// ```
mixin _$MyoroTabViewTabMixin {
  MyoroTabViewTab get self => this as MyoroTabViewTab;

  MyoroTabViewTab copyWith({
    IconData? icon,
    bool iconProvided = true,
    String? text,
    bool textProvided = true,
    Widget? content,
  }) {
    return MyoroTabViewTab(
      icon: iconProvided ? (icon ?? self.icon) : null,
      text: textProvided ? (text ?? self.text) : null,
      content: content ?? self.content,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTabViewTab &&
        other.runtimeType == runtimeType &&
        other.icon == self.icon &&
        other.text == self.text &&
        other.content == self.content;
  }

  @override
  int get hashCode {
    return Object.hash(self.icon, self.text, self.content);
  }

  @override
  String toString() =>
      'MyoroTabViewTab(\n'
      '  icon: ${self.icon},\n'
      '  text: ${self.text},\n'
      '  content: ${self.content},\n'
      ');';
}
