import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_app_bar_style.g.dart';

/// Style model of [MyoroAppBar].
@immutable
@myoroModel
class MyoroAppBarStyle with _$MyoroAppBarStyleMixin {
  static MyoroAppBarStyle lerp(MyoroAppBarStyle? a, MyoroAppBarStyle? b, double t) {
    return MyoroAppBarStyle(
      backgroundColor: Color.lerp(a?.backgroundColor, b?.backgroundColor, t),
      contentPadding: EdgeInsets.lerp(a?.contentPadding, b?.contentPadding, t),
    );
  }

  const MyoroAppBarStyle({this.backgroundColor, this.contentPadding});

  // coverage:ignore-start
  MyoroAppBarStyle.fake()
    : backgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null;
  // coverage:ignore-end

  /// Background [Color].
  final Color? backgroundColor;

  /// Content padding.
  final EdgeInsets? contentPadding;

  /// Copy with.
}
