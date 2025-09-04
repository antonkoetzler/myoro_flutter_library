import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_text_button_style.g.dart';

/// Style model of [MyoroIconTextButton].
@immutable
@myoroModel
final class MyoroIconTextButtonStyle extends MyoroButtonStyle with _$MyoroIconTextButtonStyleMixin {
  static const invertDefaultValue = false;

  const MyoroIconTextButtonStyle({
    super.cursor,
    super.backgroundColorBuilder,
    super.borderRadius,
    super.borderBuilder,
    this.invert = invertDefaultValue,
    this.spacing,
    this.padding,
    this.contentColorBuilder,
  });

  // coverage:ignore-start
  factory MyoroIconTextButtonStyle.fake() {
    return MyoroIconTextButtonStyle(
      cursor: faker.randomGenerator.boolean() ? myoroFake<MouseCursor>() : null,
      backgroundColorBuilder: faker.randomGenerator.boolean() ? ((_) => myoroFake<Color>()) : null,
      borderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      borderBuilder: faker.randomGenerator.boolean() ? ((_) => myoroFake<Border>()) : null,
      invert: faker.randomGenerator.boolean(),
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      padding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      contentColorBuilder: faker.randomGenerator.boolean() ? ((_) => myoroFake<Color>()) : null,
    );
  }
  // coverage:ignore-end

  /// By default, the icon is displays on the left, and
  /// the text on the right, this is to invert the order.
  final bool invert;

  /// Spacing between the icon and text.
  final double? spacing;

  /// Content padding.
  final EdgeInsets? padding;

  /// [Color] builder of the icon and text.
  final MyoroIconTextButtonContentColorBuilder? contentColorBuilder;

  /// Copy with.
  @override
  MyoroIconTextButtonStyle copyWith({
    MouseCursor? cursor,
    bool cursorProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    MyoroButtonBackgroundColorBuilder? backgroundColorBuilder,
    bool backgroundColorBuilderProvided = true,
    MyoroButtonBorderBuilder? borderBuilder,
    bool? invert,
    double? spacing,
    bool spacingProvided = true,
    EdgeInsets? padding,
    bool paddingProvided = true,
    MyoroIconTextButtonContentColorBuilder? contentColorBuilder,
    bool contentColorBuilderProvided = true,
  }) {
    return MyoroIconTextButtonStyle(
      cursor: cursorProvided ? (cursor ?? this.cursor) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? this.borderRadius) : null,
      backgroundColorBuilder: backgroundColorBuilderProvided
          ? (backgroundColorBuilder ?? this.backgroundColorBuilder)
          : null,
      borderBuilder: borderBuilder ?? this.borderBuilder,
      invert: invert ?? this.invert,
      spacing: spacingProvided ? (spacing ?? this.spacing) : null,
      padding: paddingProvided ? (padding ?? this.padding) : null,
      contentColorBuilder: contentColorBuilderProvided ? (contentColorBuilder ?? this.contentColorBuilder) : null,
    );
  }
}
