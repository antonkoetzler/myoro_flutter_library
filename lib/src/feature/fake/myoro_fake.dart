import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import 'myoro_nullable_fake.dart';

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
          primaryContainer: myoroNullableFake<Color>(),
          onPrimaryContainer: myoroNullableFake<Color>(),
          primaryFixed: myoroNullableFake<Color>(),
          primaryFixedDim: myoroNullableFake<Color>(),
          onPrimaryFixed: myoroNullableFake<Color>(),
          onPrimaryFixedVariant: myoroNullableFake<Color>(),
          secondary: myoroFake<Color>(),
          onSecondary: myoroFake<Color>(),
          secondaryContainer: myoroNullableFake<Color>(),
          onSecondaryContainer: myoroNullableFake<Color>(),
          secondaryFixed: myoroNullableFake<Color>(),
          secondaryFixedDim: myoroNullableFake<Color>(),
          onSecondaryFixed: myoroNullableFake<Color>(),
          onSecondaryFixedVariant: myoroNullableFake<Color>(),
          tertiary: myoroNullableFake<Color>(),
          onTertiary: myoroNullableFake<Color>(),
          tertiaryContainer: myoroNullableFake<Color>(),
          onTertiaryContainer: myoroNullableFake<Color>(),
          tertiaryFixed: myoroNullableFake<Color>(),
          tertiaryFixedDim: myoroNullableFake<Color>(),
          onTertiaryFixed: myoroNullableFake<Color>(),
          onTertiaryFixedVariant: myoroNullableFake<Color>(),
          error: myoroFake<Color>(),
          onError: myoroFake<Color>(),
          errorContainer: myoroNullableFake<Color>(),
          onErrorContainer: myoroNullableFake<Color>(),
          surface: myoroFake<Color>(),
          onSurface: myoroFake<Color>(),
          surfaceDim: myoroNullableFake<Color>(),
          surfaceBright: myoroNullableFake<Color>(),
          surfaceContainerLowest: myoroNullableFake<Color>(),
          surfaceContainerLow: myoroNullableFake<Color>(),
          surfaceContainer: myoroNullableFake<Color>(),
          surfaceContainerHigh: myoroNullableFake<Color>(),
          surfaceContainerHighest: myoroNullableFake<Color>(),
          onSurfaceVariant: myoroNullableFake<Color>(),
          outline: myoroNullableFake<Color>(),
          outlineVariant: myoroNullableFake<Color>(),
          shadow: myoroNullableFake<Color>(),
          scrim: myoroNullableFake<Color>(),
          inverseSurface: myoroNullableFake<Color>(),
          onInverseSurface: myoroNullableFake<Color>(),
          inversePrimary: myoroNullableFake<Color>(),
          surfaceTint: myoroNullableFake<Color>(),
        )
        as T;
  }

  if (T == Curve) {
    return kMyoroTestCurves[faker.randomGenerator.integer(kMyoroTestCurves.length)] as T;
  }

  if (T == DismissDirection) {
    return DismissDirection.values[faker.randomGenerator.integer(DismissDirection.values.length)] as T;
  }

  if (T == double) {
    return faker.randomGenerator.decimal(scale: 20) as T;
  }

  if (T == int) {
    return faker.randomGenerator.integer(100) as T;
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

  if (T == MyoroInputStyleEnum) {
    return MyoroInputStyleEnum.fake() as T;
  }

  if (T == MyoroIconTextButtonStyle) {
    return MyoroIconTextButtonStyle.fake() as T;
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

  if (T == ShapeBorder) {
    return myoroFake<RoundedRectangleBorder>() as T;
  }

  if (T == SnackBarBehavior) {
    return SnackBarBehavior.values[faker.randomGenerator.integer(SnackBarBehavior.values.length)] as T;
  }

  if (T == String) {
    return faker.lorem.word() as T;
  }

  if (T == TextAlign) {
    return TextAlign.values[faker.randomGenerator.integer(TextAlign.values.length)] as T;
  }

  if (T == TextOverflow) {
    return TextOverflow.values[faker.randomGenerator.integer(TextOverflow.values.length)] as T;
  }

  if (T == TextTheme) {
    return TextTheme(
          displayLarge: myoroNullableFake<TextStyle>(),
          displayMedium: myoroNullableFake<TextStyle>(),
          displaySmall: myoroNullableFake<TextStyle>(),
          headlineLarge: myoroNullableFake<TextStyle>(),
          headlineMedium: myoroNullableFake<TextStyle>(),
          headlineSmall: myoroNullableFake<TextStyle>(),
          titleLarge: myoroNullableFake<TextStyle>(),
          titleMedium: myoroNullableFake<TextStyle>(),
          titleSmall: myoroNullableFake<TextStyle>(),
          bodyLarge: myoroNullableFake<TextStyle>(),
          bodyMedium: myoroNullableFake<TextStyle>(),
          bodySmall: myoroNullableFake<TextStyle>(),
          labelLarge: myoroNullableFake<TextStyle>(),
          labelMedium: myoroNullableFake<TextStyle>(),
          labelSmall: myoroNullableFake<TextStyle>(),
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

  if (T == Widget) {
    return Text(faker.lorem.word()) as T;
  }

  throw UnimplementedError('[myoroFake]: $T has no implementation!');
}
