import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A model that loads an item in [MyoroMenu], but also can
/// be seen as a general model to load items into a menu.
///
/// 2 "modes":
/// 1. [icon] and/or [text] is provided; a simple [MyoroMenuItem];
/// 2. [itemBuilder] provided for a custom [MyoroMenuItem] widget.
final class MyoroMenuItem extends Equatable {
  /// If the item is isHovered or not.
  final bool? isHovered;

  /// What is called when the item is clicked.
  final VoidCallback? onPressed;

  /// [IconData] of the item.
  final IconData? icon;

  /// Text of the item.
  final String? text;

  /// [MyoroMenuItemBuilder] of the item.
  final MyoroHoverButtonBuilder? itemBuilder;

  const MyoroMenuItem({
    this.isHovered,
    this.onPressed,
    this.icon,
    this.text,
    this.itemBuilder,
  }) : assert(
          itemBuilder != null ? (icon == null && text == null) : (icon != null || text != null),
          '[MyoroMenuItem]: If [itemBuilder] is provided, [text] & [icon] must be null. '
          'If [itemBuilder] is not provided, [text] (x)or [text] must not be null.',
        );

  MyoroMenuItem copyWith({
    bool? isHovered,
    VoidCallback? onPressed,
    IconData? icon,
    String? text,
    MyoroHoverButtonBuilder? itemBuilder,
  }) {
    return MyoroMenuItem(
      isHovered: isHovered ?? this.isHovered,
      onPressed: onPressed ?? this.onPressed,
      icon: icon ?? this.icon,
      text: text ?? this.text,
      itemBuilder: itemBuilder ?? this.itemBuilder,
    );
  }

  MyoroMenuItem.fake()
      : isHovered = faker.randomGenerator.boolean(),
        onPressed = null,
        icon = kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)],
        text = faker.randomGenerator.string(50),
        itemBuilder = null;

  @override
  String toString() => ''
      'MyoroMenuItem(\n'
      '  isHovered: $isHovered,\n'
      '  onPressed: $onPressed\n,'
      '  icon: $icon\n,'
      '  text: $text\n,'
      '  itemBuilder: $itemBuilder,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      isHovered,
      onPressed,
      icon,
      text,
      itemBuilder,
    ];
  }
}
