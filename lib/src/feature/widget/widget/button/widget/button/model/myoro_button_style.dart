import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_style.g.dart';

/// Style model of [MyoroButton].
@immutable
@myoroModel
class MyoroButtonStyle with _$MyoroButtonStyleMixin {
  const MyoroButtonStyle({this.cursor, this.backgroundColorBuilder, this.borderRadius, this.borderBuilder});

  // coverage:ignore-start
  MyoroButtonStyle.fake()
    : cursor = faker.randomGenerator.boolean() ? myoroFake<MouseCursor>() : null,
      backgroundColorBuilder = faker.randomGenerator.boolean() ? ((_) => myoroFake<Color>()) : null,
      borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      borderBuilder = faker.randomGenerator.boolean() ? ((_) => myoroFake<Border>()) : null;
  // coverage:ignore-end

  /// [MouseCursor] when the [MyoroButton] is hovered over.
  ///
  /// If [MyoroButtonConfiguration.onTapDown] or [MyoroButtonConfiguration.onTapUp] is provided,
  /// [cursor] defaults to [SystemMouseCursors.click]. Other, the default is [SystemMouseCursors.basic].
  final MouseCursor? cursor;

  /// [BorderRadius]
  final BorderRadius? borderRadius;

  /// Background color builder.
  final MyoroButtonBackgroundColorBuilder? backgroundColorBuilder;

  /// [BoxBorder] builder.
  final MyoroButtonBorderBuilder? borderBuilder;

  /// Copy with.
  MyoroButtonStyle copyWith({
    MouseCursor? cursor,
    bool cursorProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    MyoroButtonBackgroundColorBuilder? backgroundColorBuilder,
    bool backgroundColorBuilderProvided = true,
    MyoroButtonBorderBuilder? borderBuilder,
  }) {
    return MyoroButtonStyle(
      cursor: cursorProvided ? (cursor ?? this.cursor) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? this.borderRadius) : null,
      backgroundColorBuilder: backgroundColorBuilderProvided
          ? (backgroundColorBuilder ?? this.backgroundColorBuilder)
          : null,
      borderBuilder: borderBuilder ?? this.borderBuilder,
    );
  }
}
