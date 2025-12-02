import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_request_widget_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroRequestWidget].
@immutable
@myoroThemeExtension
class MyoroRequestWidgetThemeExtension extends ThemeExtension<MyoroRequestWidgetThemeExtension>
    with _$MyoroRequestWidgetThemeExtensionMixin
    implements MyoroRequestWidgetStyle {
  /// Default constructor.
  const MyoroRequestWidgetThemeExtension({this.errorFeedbackPadding, this.loaderPadding});

  /// Fake constructor.
  MyoroRequestWidgetThemeExtension.fake()
    : errorFeedbackPadding = myoroNullableFake<EdgeInsets>(),
      loaderPadding = myoroNullableFake<EdgeInsets>();

  /// Builder constructor.
  const MyoroRequestWidgetThemeExtension.builder()
    : errorFeedbackPadding = const EdgeInsets.all(kMyoroMultiplier * 3),
      loaderPadding = const EdgeInsets.all(kMyoroMultiplier * 3);

  /// Padding of the [MyoroErrorFeedback].
  @override
  final EdgeInsets? errorFeedbackPadding;

  /// Padding of the loader.
  @override
  final EdgeInsets? loaderPadding;

  /// Lerp function.
  @override
  MyoroRequestWidgetThemeExtension lerp(MyoroRequestWidgetThemeExtension? other, double t) {
    if (other is! MyoroRequestWidgetThemeExtension) return this;
    final style = MyoroRequestWidgetStyle.lerp(this, other, t);
    return MyoroRequestWidgetThemeExtension(
      errorFeedbackPadding: style.errorFeedbackPadding,
      loaderPadding: style.loaderPadding,
    );
  }
}
