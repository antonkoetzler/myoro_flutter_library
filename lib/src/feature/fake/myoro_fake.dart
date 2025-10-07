import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function which generates a fake object of the type provided.
///
/// Used for types MFL cannot create factories in.
///
/// Not the greatest way to implement fakes given that there are no
/// arguments to pass, but it feels damn good using this function U_U
T myoroFake<T>() {
  if (T == Alignment) {
    return kMyoroTestAlignments[faker.randomGenerator.integer(kMyoroTestAlignments.length)] as T;
  }

  if (T == Axis) {
    return Axis.values[faker.randomGenerator.integer(Axis.values.length)] as T;
  }

  if (T == Border) {
    return Border.all(
          width: faker.randomGenerator.decimal(),
          color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
        )
        as T;
  }

  if (T == BorderStyle) {
    return BorderStyle.values[faker.randomGenerator.integer(BorderStyle.values.length)] as T;
  }

  if (T == BorderSide) {
    return BorderSide(
          color: myoroFake<Color>(),
          width: faker.randomGenerator.decimal(scale: 20),
          style: myoroFake<BorderStyle>(),
          strokeAlign: faker.randomGenerator.decimal(scale: 10),
        )
        as T;
  }

  if (T == BorderRadius) {
    return BorderRadius.circular(faker.randomGenerator.decimal(scale: 50)) as T;
  }

  if (T == BoxBorder) {
    return BoxBorder.all(
          color: myoroFake<Color>(),
          width: faker.randomGenerator.decimal(scale: 10),
          style: myoroFake<BorderStyle>(),
          strokeAlign: faker.randomGenerator.decimal(scale: 5),
        )
        as T;
  }

  if (T == BoxConstraints) {
    final maxWidth = faker.randomGenerator.decimal(scale: 500);
    final maxHeight = faker.randomGenerator.decimal(scale: 500);
    return BoxConstraints(
          minWidth: faker.randomGenerator.decimal(scale: maxWidth),
          minHeight: faker.randomGenerator.decimal(scale: maxHeight),
          maxWidth: maxWidth,
          maxHeight: maxHeight,
        )
        as T;
  }

  if (T == BoxDecoration) {
    return BoxDecoration(
          color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
          border: myoroFake<Border>(),
          borderRadius: BorderRadius.circular(faker.randomGenerator.decimal()),
        )
        as T;
  }

  if (T == Brightness) {
    return Brightness.values[faker.randomGenerator.integer(Brightness.values.length)] as T;
  }

  if (T == Clip) {
    return Clip.values[faker.randomGenerator.integer(Clip.values.length)] as T;
  }

  if (T == Color) {
    return kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)] as T;
  }

  if (T == ColorScheme) {
    return ColorScheme(
          brightness: myoroFake<Brightness>(),
          primary: myoroFake<Color>(),
          onPrimary: myoroFake<Color>(),
          primaryContainer: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          onPrimaryContainer: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          primaryFixed: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          primaryFixedDim: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          onPrimaryFixed: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          onPrimaryFixedVariant: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          secondary: myoroFake<Color>(),
          onSecondary: myoroFake<Color>(),
          secondaryContainer: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          onSecondaryContainer: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          secondaryFixed: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          secondaryFixedDim: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          onSecondaryFixed: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          onSecondaryFixedVariant: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          tertiary: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          onTertiary: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          tertiaryContainer: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          onTertiaryContainer: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          tertiaryFixed: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          tertiaryFixedDim: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          onTertiaryFixed: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          onTertiaryFixedVariant: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          error: myoroFake<Color>(),
          onError: myoroFake<Color>(),
          errorContainer: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          onErrorContainer: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          surface: myoroFake<Color>(),
          onSurface: myoroFake<Color>(),
          surfaceDim: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          surfaceBright: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          surfaceContainerLowest: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          surfaceContainerLow: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          surfaceContainer: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          surfaceContainerHigh: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          surfaceContainerHighest: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          onSurfaceVariant: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          outline: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          outlineVariant: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          shadow: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          scrim: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          inverseSurface: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          onInverseSurface: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          inversePrimary: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
          surfaceTint: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
        )
        as T;
  }

  if (T == Curve) {
    return kMyoroTestCurves[faker.randomGenerator.integer(kMyoroTestCurves.length)] as T;
  }

  if (T == DismissDirection) {
    return DismissDirection.values[faker.randomGenerator.integer(DismissDirection.values.length)] as T;
  }

  if (T == Duration) {
    return Duration(seconds: faker.randomGenerator.integer(2)) as T;
  }

  if (T == EdgeInsets) {
    return EdgeInsets.all(faker.randomGenerator.decimal(scale: 20)) as T;
  }

  if (T == FloatingLabelBehavior) {
    return FloatingLabelBehavior.values[faker.randomGenerator.integer(FloatingLabelBehavior.values.length)] as T;
  }

  if (T == MouseCursor) {
    return kMyoroTestCursors[faker.randomGenerator.integer(kMyoroTestCursors.length)] as T;
  }

  if (T == IconData) {
    return kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)] as T;
  }

  if (T == InputBorder) {
    final borders = [
      UnderlineInputBorder(
        borderSide: BorderSide(width: faker.randomGenerator.decimal(), color: myoroFake<Color>()),
      ),
      OutlineInputBorder(borderRadius: myoroFake<BorderRadius>(), borderSide: myoroFake<BorderSide>()),
      InputBorder.none,
    ];
    return borders[faker.randomGenerator.integer(borders.length)] as T;
  }

  if (T == MouseCursor) {
    return kMyoroTestCursors[faker.randomGenerator.integer(kMyoroTestCursors.length)] as T;
  }

  if (T == OutlineInputBorder) {
    return OutlineInputBorder(borderRadius: myoroFake<BorderRadius>(), borderSide: myoroFake<BorderSide>()) as T;
  }

  if (T == RangeValues) {
    final min = faker.randomGenerator.decimal(scale: 20);
    return RangeValues(min, faker.randomGenerator.decimal(scale: 200, min: min)) as T;
  }

  if (T == RoundedRectangleBorder) {
    return RoundedRectangleBorder(side: myoroFake<BorderSide>()) as T;
  }

  if (T == Size) {
    return Size(
          faker.randomGenerator.decimal(scale: 500, min: 100),
          faker.randomGenerator.decimal(scale: 500, min: 100),
        )
        as T;
  }

  if (T == SnackBarBehavior) {
    return SnackBarBehavior.values[faker.randomGenerator.integer(SnackBarBehavior.values.length)] as T;
  }

  if (T == TextAlign) {
    return TextAlign.values[faker.randomGenerator.integer(TextAlign.values.length)] as T;
  }

  if (T == TextOverflow) {
    return TextOverflow.values[faker.randomGenerator.integer(TextOverflow.values.length)] as T;
  }

  if (T == TextTheme) {
    return TextTheme(
          displayLarge: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
          displayMedium: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
          displaySmall: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
          headlineLarge: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
          headlineMedium: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
          headlineSmall: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
          titleLarge: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
          titleMedium: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
          titleSmall: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
          bodyLarge: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
          bodyMedium: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
          bodySmall: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
          labelLarge: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
          labelMedium: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
          labelSmall: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
        )
        as T;
  }

  if (T == ThemeMode) {
    return ThemeMode.values[faker.randomGenerator.integer(ThemeMode.values.length)] as T;
  }

  if (T == TextStyle) {
    return MyoroTypography(faker.randomGenerator.boolean()).randomTextStyle as T;
  }

  if (T == UnderlineInputBorder) {
    return UnderlineInputBorder(
          borderSide: BorderSide(width: faker.randomGenerator.decimal(), color: myoroFake<Color>()),
        )
        as T;
  }

  throw UnimplementedError('[myoroFake]: $T has no implementation!');
}
