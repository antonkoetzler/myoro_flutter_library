import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroTableV2].
final class MyoroTableV2ThemeExtension
    extends ThemeExtension<MyoroTableV2ThemeExtension> {
  /// [BoxDecoration] of the [Container] in [_MyoroTableV2State].
  final BoxDecoration decoration;

  /// Standard [TextStyle] of a [_TitleColumn].
  final TextStyle titleColumnTextStyle;

  /// Size of [_Loader]'s [MyoroCircularLoader].
  final double loaderSize;

  /// [TextStyle] of [_ErrorMessage].
  final TextStyle errorMessageTextStyle;

  /// [EdgeInsets] of [_Loader] and [_ErrorMessage].
  final EdgeInsets loaderErrorMessagePadding;

  const MyoroTableV2ThemeExtension({
    required this.decoration,
    required this.titleColumnTextStyle,
    required this.loaderSize,
    required this.errorMessageTextStyle,
    required this.loaderErrorMessagePadding,
  });

  MyoroTableV2ThemeExtension.builder(
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) : decoration = BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
        border: Border.all(
          width: kMyoroBorderLength,
          color: colorScheme.onPrimary,
        ),
      ),
      titleColumnTextStyle = textTheme.bodyMedium!,
      loaderSize = 35,
      errorMessageTextStyle = textTheme.headlineLarge!.copyWith(
        fontSize: MyoroFontSizeEnum.extraLarge.size,
        color: colorScheme.error,
      ),
      loaderErrorMessagePadding = const EdgeInsets.all(15);

  @override
  MyoroTableV2ThemeExtension copyWith({
    BoxDecoration? decoration,
    TextStyle? titleColumnTextStyle,
    double? loaderSize,
    TextStyle? errorMessageTextStyle,
    EdgeInsets? loaderErrorMessagePadding,
  }) {
    return MyoroTableV2ThemeExtension(
      decoration: decoration ?? this.decoration,
      titleColumnTextStyle: titleColumnTextStyle ?? this.titleColumnTextStyle,
      loaderSize: loaderSize ?? this.loaderSize,
      errorMessageTextStyle:
          errorMessageTextStyle ?? this.errorMessageTextStyle,
      loaderErrorMessagePadding:
          loaderErrorMessagePadding ?? this.loaderErrorMessagePadding,
    );
  }

  @override
  MyoroTableV2ThemeExtension lerp(
    covariant ThemeExtension<MyoroTableV2ThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTableV2ThemeExtension) return this;
    return copyWith(
      decoration: BoxDecoration.lerp(decoration, other.decoration, t),
      titleColumnTextStyle: TextStyle.lerp(
        titleColumnTextStyle,
        other.titleColumnTextStyle,
        t,
      ),
      loaderSize: lerpDouble(loaderSize, other.loaderSize, t),
      errorMessageTextStyle: TextStyle.lerp(
        errorMessageTextStyle,
        other.errorMessageTextStyle,
        t,
      ),
      loaderErrorMessagePadding: EdgeInsets.lerp(
        loaderErrorMessagePadding,
        other.loaderErrorMessagePadding,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTableV2ThemeExtension &&
        other.runtimeType == runtimeType &&
        other.decoration == decoration &&
        other.titleColumnTextStyle == titleColumnTextStyle &&
        other.loaderSize == loaderSize &&
        other.errorMessageTextStyle == errorMessageTextStyle &&
        other.loaderErrorMessagePadding == loaderErrorMessagePadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      decoration,
      titleColumnTextStyle,
      loaderSize,
      errorMessageTextStyle,
      loaderErrorMessagePadding,
    );
  }

  @override
  String toString() =>
      'MyoroTableV2ThemeExtension(\n'
      '  decoration: $decoration,\n'
      '  titleColumnTextStyle: $titleColumnTextStyle,\n'
      '  loaderSize: $loaderSize,\n'
      '  errorMessageTextStyle: $errorMessageTextStyle,\n'
      '  loaderErrorMessagePadding: $loaderErrorMessagePadding,\n'
      ');';
}
