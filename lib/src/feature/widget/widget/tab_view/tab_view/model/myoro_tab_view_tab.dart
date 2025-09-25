import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_tab_view_tab.g.dart';

/// Model of a single tab apart of a [MyoroTabView].
@immutable
@myoroModel
class MyoroTabViewTab with _$MyoroTabViewTabMixin {
  const MyoroTabViewTab({this.icon, this.text, required this.content})
    : assert(icon != null || text != null, '[MyoroTabViewTab]: [icon] and/or [text] must be provided.');

  // coverage:ignore-start
  factory MyoroTabViewTab.fake() {
    final iconProvided = faker.randomGenerator.boolean();

    return MyoroTabViewTab(
      icon: iconProvided || faker.randomGenerator.boolean() ? myoroFake<IconData>() : null,
      text: !iconProvided || faker.randomGenerator.boolean() ? faker.lorem.word() : null,
      content: Text(faker.lorem.word()),
    );
  }
  // coverage:ignore-end

  /// [IconData] of the [MyoroTabViewTab].
  final IconData? icon;

  /// Text of the [MyoroTabViewTab].
  final String? text;

  /// Content of the [MyoroTabViewTab].
  final Widget content;
}
