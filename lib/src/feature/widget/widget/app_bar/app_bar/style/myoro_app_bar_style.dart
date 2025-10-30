import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_app_bar_style.g.dart';

/// Style model of [MyoroAppBar].
@immutable
@myoroModel
class MyoroAppBarStyle with _$MyoroAppBarStyleMixin {
  /// Lerp function.
  static MyoroAppBarStyle lerp(MyoroAppBarStyle? a, MyoroAppBarStyle? b, double t) {
    return MyoroAppBarStyle(
      backgroundColor: Color.lerp(a?.backgroundColor, b?.backgroundColor, t),
      contentPadding: EdgeInsets.lerp(a?.contentPadding, b?.contentPadding, t),
    );
  }

  /// Default constructor.
  const MyoroAppBarStyle({this.backgroundColor, this.contentPadding});

  /// Fake constructor.
  MyoroAppBarStyle.fake()
    : backgroundColor = myoroNullableFake<Color>(),
      contentPadding = myoroNullableFake<EdgeInsets>();

  /// Background [Color].
  final Color? backgroundColor;

  /// Content padding.
  final EdgeInsets? contentPadding;
}
