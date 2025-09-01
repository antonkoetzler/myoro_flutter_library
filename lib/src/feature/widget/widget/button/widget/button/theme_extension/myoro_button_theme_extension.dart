import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroButton].
@immutable
@myoroThemeExtension
class MyoroButtonThemeExtension extends ThemeExtension<MyoroButtonThemeExtension>
    with _$MyoroButtonThemeExtensionMixin {
  const MyoroButtonThemeExtension({this.borderRadius, this.cursor});

  // coverage:ignore-start
  MyoroButtonThemeExtension.fake()
    : borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      cursor = faker.randomGenerator.boolean() ? myoroFake<MouseCursor>() : null;
  // coverage:ignore-end

  MyoroButtonThemeExtension.builder() : cursor = null, borderRadius = BorderRadius.circular(kMyoroBorderRadiusLength);

  /// Border radius.
  final BorderRadius? borderRadius;

  /// [MouseCursor] when the [MyoroButton] is hovered over.
  ///
  /// If [MyoroButtonConfiguration.onTapDown] or [MyoroButtonConfiguration.onTapUp] is provided,
  /// [cursor] defaults to [SystemMouseCursors.click]. Other, the default is [SystemMouseCursors.basic].
  final MouseCursor? cursor;

  @override
  MyoroButtonThemeExtension lerp(covariant ThemeExtension<MyoroButtonThemeExtension>? other, double t) {
    if (other is! MyoroButtonThemeExtension) return this;

    final borderRadius = BorderRadius.lerp(this.borderRadius, other.borderRadius, t);
    final cursor = myoroLerp(this.cursor, other.cursor, t);

    return copyWith(
      cursor: cursor,
      cursorProvided: cursor != null,
      borderRadius: borderRadius,
      borderRadiusProvided: borderRadius != null,
    );
  }
}
