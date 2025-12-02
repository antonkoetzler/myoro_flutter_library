import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_request_widget_style.g.dart';

/// Style model of [MyoroRequestWidget].
@immutable
@myoroModel
class MyoroRequestWidgetStyle with _$MyoroRequestWidgetStyleMixin {
  /// Lerp function.
  static MyoroRequestWidgetStyle lerp(MyoroRequestWidgetStyle? a, MyoroRequestWidgetStyle? b, double t) {
    return MyoroRequestWidgetStyle(
      errorFeedbackPadding: EdgeInsets.lerp(a?.errorFeedbackPadding, b?.errorFeedbackPadding, t),
      loaderPadding: EdgeInsets.lerp(a?.loaderPadding, b?.loaderPadding, t),
    );
  }

  /// Default constructor.
  const MyoroRequestWidgetStyle({this.errorFeedbackPadding, this.loaderPadding});

  /// Fake constructor.
  MyoroRequestWidgetStyle.fake()
    : errorFeedbackPadding = myoroNullableFake<EdgeInsets>(),
      loaderPadding = myoroNullableFake<EdgeInsets>();

  /// Padding of the [MyoroErrorFeedback].
  final EdgeInsets? errorFeedbackPadding;

  /// Padding of the loader.
  final EdgeInsets? loaderPadding;
}
