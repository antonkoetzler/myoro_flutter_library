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
  if (T is Alignment) {
    return kMyoroTestAlignments[faker.randomGenerator.integer(kMyoroTestAlignments.length)] as T;
  }

  if (T is Axis) {
    return Axis.values[faker.randomGenerator.integer(Axis.values.length)] as T;
  }

  if (T is Border) {
    return Border.all(
          width: faker.randomGenerator.decimal(),
          color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
        )
        as T;
  }

  if (T is BorderStyle) {
    return BorderStyle.values[faker.randomGenerator.integer(BorderStyle.values.length)] as T;
  }

  if (T is BorderSide) {
    return BorderSide(
          color: myoroFake<Color>(),
          width: faker.randomGenerator.decimal(scale: 20),
          style: myoroFake<BorderStyle>(),
          strokeAlign: faker.randomGenerator.decimal(scale: 10),
        )
        as T;
  }

  if (T is BorderRadius) {
    return BorderRadius.circular(faker.randomGenerator.decimal(scale: 50)) as T;
  }

  if (T is BoxConstraints) {
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

  if (T is BoxDecoration) {
    return BoxDecoration(
          color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
          border: myoroFake<Border>(),
          borderRadius: BorderRadius.circular(faker.randomGenerator.decimal()),
        )
        as T;
  }

  if (T is Color) {
    return kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)] as T;
  }

  if (T is Curves) {
    return kMyoroTestCurves[faker.randomGenerator.integer(kMyoroTestCurves.length)] as T;
  }

  if (T is DismissDirection) {
    return DismissDirection.values[faker.randomGenerator.integer(DismissDirection.values.length)] as T;
  }

  if (T is Duration) {
    return Duration(seconds: faker.randomGenerator.integer(2)) as T;
  }

  if (T is EdgeInsets) {
    return EdgeInsets.all(faker.randomGenerator.decimal(scale: 20)) as T;
  }

  if (T is FloatingLabelBehavior) {
    return FloatingLabelBehavior.values[faker.randomGenerator.integer(FloatingLabelBehavior.values.length)] as T;
  }

  if (T is IconData) {
    return kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)] as T;
  }

  if (T is OutlineInputBorder) {
    return OutlineInputBorder(borderRadius: myoroFake<BorderRadius>(), borderSide: myoroFake<BorderSide>()) as T;
  }

  if (T is RoundedRectangleBorder) {
    return RoundedRectangleBorder(side: myoroFake<BorderSide>()) as T;
  }

  if (T is SnackBarBehavior) {
    return SnackBarBehavior.values[faker.randomGenerator.integer(SnackBarBehavior.values.length)] as T;
  }

  if (T is SystemMouseCursors) {
    return kMyoroTestCursors[faker.randomGenerator.integer(kMyoroTestCursors.length)] as T;
  }

  if (T is TextAlign) {
    return TextAlign.values[faker.randomGenerator.integer(TextAlign.values.length)] as T;
  }

  if (T is TextOverflow) {
    return TextOverflow.values[faker.randomGenerator.integer(TextOverflow.values.length)] as T;
  }

  if (T is ThemeMode) {
    return ThemeMode.values[faker.randomGenerator.integer(ThemeMode.values.length)] as T;
  }

  if (T is UnderlineInputBorder) {
    return UnderlineInputBorder(
          borderSide: BorderSide(width: faker.randomGenerator.decimal(), color: myoroFake<Color>()),
        )
        as T;
  }

  throw UnimplementedError('[myoroFake]: $T has no implementation!');
}
