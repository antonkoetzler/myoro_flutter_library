import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_scrollable_style.g.dart';

/// Style model of [MyoroSingleChildScrollable].
@immutable
@myoroModel
class MyoroScrollableStyle with _$MyoroScrollableStyleMixin {
  /// Lerp function.
  static MyoroScrollableStyle lerp(MyoroScrollableStyle? a, MyoroScrollableStyle? b, double t) {
    return MyoroScrollableStyle(
      padding: EdgeInsets.lerp(a?.padding, b?.padding, t),
      gradientDecoration: BoxDecoration.lerp(a?.gradientDecoration, b?.gradientDecoration, t),
    );
  }

  /// Default constructor.
  const MyoroScrollableStyle({this.padding, this.gradientDecoration});

  /// Fake constructor.
  MyoroScrollableStyle.fake()
    : padding = myoroNullableFake<EdgeInsets>(),
      gradientDecoration = myoroNullableFake<BoxDecoration>();

  /// [SingleChildScrollView.padding].
  final EdgeInsets? padding;

  /// Decoration of the gradient.
  final BoxDecoration? gradientDecoration;
}
