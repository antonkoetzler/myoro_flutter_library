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

  /// Size of the [Icon].
  final double? iconSize;

  /// Text of the item.
  final String? text;

  /// Text style of the [Text].
  final TextStyle? textStyle;

  /// Text alignment of the [Text].
  final TextAlign? textAlign;

  /// [MyoroMenuItemBuilder] of the item for a customized [Widget].
  final MyoroHoverButtonBuilder? itemBuilder;

  const MyoroMenuItem({
    this.isHovered,
    this.onPressed,
    this.icon,
    this.iconSize,
    this.text,
    this.textStyle,
    this.textAlign,
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
    double? iconSize,
    String? text,
    TextStyle? textStyle,
    TextAlign? textAlign,
    MyoroHoverButtonBuilder? itemBuilder,
  }) {
    return MyoroMenuItem(
      isHovered: isHovered ?? this.isHovered,
      onPressed: onPressed ?? this.onPressed,
      icon: icon ?? this.icon,
      iconSize: iconSize ?? this.iconSize,
      text: text ?? this.text,
      textStyle: textStyle ?? this.textStyle,
      textAlign: textAlign ?? this.textAlign,
      itemBuilder: itemBuilder ?? this.itemBuilder,
    );
  }

  MyoroMenuItem.fake()
      : isHovered = faker.randomGenerator.boolean(),
        onPressed = null,
        icon = kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)],
        iconSize = null,
        text = faker.randomGenerator.string(50),
        textStyle = null,
        textAlign = null,
        itemBuilder = null;

  @override
  String toString() => ''
      'MyoroMenuItem(\n'
      '  isHovered: $isHovered,\n'
      '  onPressed: $onPressed,\n'
      '  icon: $icon,\n'
      '  iconSize: $iconSize,\n'
      '  text: $text,\n'
      '  textStyle: $textStyle,\n'
      '  textAlign: $textAlign,\n'
      '  itemBuilder: $itemBuilder,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      isHovered,
      onPressed,
      icon,
      iconSize,
      text,
      textStyle,
      textAlign,
      itemBuilder,
    ];
  }
}
