import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_app_bar_style.g.dart';

/// Style model of [MyoroAppBar].
@immutable
@myoroModel
class MyoroAppBarStyle with _$MyoroAppBarStyleMixin {
  static const borderedDefaultValue = false;

  const MyoroAppBarStyle({this.bordered = borderedDefaultValue, this.backgroundColor, this.contentPadding});

  // coverage:ignore-start
  MyoroAppBarStyle.fake()
    : bordered = faker.randomGenerator.boolean(),
      backgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null;
  // coverage:ignore-end

  MyoroAppBarStyle copyWith({
    bool? bordered,
    Color? backgroundColor,
    bool backgroundColorProvided = true,
    EdgeInsets? contentPadding,
    bool contentPaddingProvided = true,
  }) {
    return MyoroAppBarStyle(
      bordered: bordered ?? this.bordered,
      backgroundColor: backgroundColorProvided ? (backgroundColor ?? this.backgroundColor) : null,
      contentPadding: contentPaddingProvided ? (contentPadding ?? this.contentPadding) : null,
    );
  }

  /// If there is a divider border below the app bar.
  final bool bordered;

  /// Background [Color].
  final Color? backgroundColor;

  /// Content padding.
  final EdgeInsets? contentPadding;
}
