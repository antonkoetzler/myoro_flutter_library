import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroTable].
///
/// TODO: Needs to be tested.
class MyoroTableThemeExtension extends ThemeExtension<MyoroTableThemeExtension> {
  /// Default [TextStyle] of [_Column].
  final TextStyle columnTextStyle;

  const MyoroTableThemeExtension({required this.columnTextStyle});

  MyoroTableThemeExtension.fake()
    : columnTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle;

  MyoroTableThemeExtension.builder(TextTheme textTheme) : columnTextStyle = textTheme.titleMedium!;

  @override
  MyoroTableThemeExtension copyWith({TextStyle? columnTextStyle}) {
    return MyoroTableThemeExtension(columnTextStyle: columnTextStyle ?? this.columnTextStyle);
  }

  @override
  MyoroTableThemeExtension lerp(
    covariant ThemeExtension<MyoroTableThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTableThemeExtension) return this;
    return copyWith(columnTextStyle: TextStyle.lerp(columnTextStyle, other.columnTextStyle, t));
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTableThemeExtension &&
        other.runtimeType == runtimeType &&
        other.columnTextStyle == columnTextStyle;
  }

  @override
  int get hashCode {
    return Object.hashAll([columnTextStyle]);
  }

  @override
  String toString() =>
      'MyoroTableThemeExtension(\n'
      '  columnTextStyle: $columnTextStyle,\n'
      ');';
}
