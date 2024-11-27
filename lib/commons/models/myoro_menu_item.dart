import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A model that loads an item in [MyoroMenu], but also can
/// be seen as a general model to load items into a menu.
final class MyoroMenuItem extends Equatable {
  /// [IconData] of the item.
  final IconData? icon;

  /// Text of the item.
  final String? text;

  /// If the item is isHovered or not.
  final bool? isHovered;

  /// What is called when the item is clicked.
  final VoidCallback? onPressed;

  const MyoroMenuItem({
    this.icon,
    this.text,
    this.isHovered,
    this.onPressed,
  }) : assert(
          icon != null || text != null,
          '[MyoroMenuItem]: [icon] and/or [text] need to be provided.',
        );

  MyoroMenuItem copyWith({
    IconData? icon,
    String? text,
    bool? isHovered,
    VoidCallback? onPressed,
  }) {
    return MyoroMenuItem(
      icon: icon ?? this.icon,
      text: text ?? this.text,
      isHovered: isHovered ?? this.isHovered,
      onPressed: onPressed ?? this.onPressed,
    );
  }

  MyoroMenuItem.fake()
      : icon = kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)],
        text = faker.randomGenerator.string(50),
        isHovered = faker.randomGenerator.boolean(),
        onPressed = null;

  @override
  String toString() => ''
      'MyoroMenuItem(\n'
      '  icon: $icon\n,'
      '  text: $text\n,'
      '  isHovered: $isHovered,\n'
      '  onPressed: $onPressed\n,'
      ');';

  @override
  List<Object?> get props {
    return [
      icon,
      text,
      isHovered,
      onPressed,
    ];
  }
}
