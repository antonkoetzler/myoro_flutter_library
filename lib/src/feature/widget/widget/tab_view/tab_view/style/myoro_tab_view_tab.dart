import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model of a single tab apart of a [MyoroTabView].
@immutable
class MyoroTabViewTab {
  /// Default value of [text].
  static const textDefaultValue = kMyoroEmptyString;

  /// Default constructor.
  const MyoroTabViewTab({this.icon, this.text = textDefaultValue, required this.content})
    : assert(icon != null || text.length > 0, '[MyoroTabViewTab]: [icon] and/or [text] must be provided.');

  /// Fake constructor.
  MyoroTabViewTab.fake()
    : icon = myoroNullableFake<IconData>(),
      text = faker.randomGenerator.boolean() ? faker.lorem.word() : kMyoroEmptyString,
      content = myoroFake<Widget>();

  /// [IconData] of the [MyoroTabViewTab].
  final IconData? icon;

  /// Text of the [MyoroTabViewTab].
  final String text;

  /// Content of the [MyoroTabViewTab].
  final Widget content;
}
