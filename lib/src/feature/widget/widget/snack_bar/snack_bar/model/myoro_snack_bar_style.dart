import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_snack_bar_style.g.dart';

/// Style model of [MyoroSnackBar].
@immutable
@myoroModel
class MyoroSnackBarStyle with _$MyoroSnackBarStyleMixin {
  const MyoroSnackBarStyle({
    this.primaryColor,
    this.standardBorderColor,
    this.attentionBorderColor,
    this.successBorderColor,
    this.errorBorderColor,
    this.borderWidth,
    this.borderRadius,
    this.padding,
    this.spacing,
    this.messageTextStyle,
    this.closeButtonIconConfiguration,
  });

  // coverage:ignore-start
  factory MyoroSnackBarStyle.fake() {
    return MyoroSnackBarStyle(
      primaryColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      standardBorderColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      attentionBorderColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      successBorderColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      errorBorderColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderWidth: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      borderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      padding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      messageTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      closeButtonIconConfiguration: faker.randomGenerator.boolean() ? MyoroIconConfiguration.fake() : null,
    );
  }
  // coverage:ignore-end

  /// Background color of the snack bar.
  final Color? primaryColor;

  /// [MyoroSnackBarTypeEnum.standard].
  final Color? standardBorderColor;

  /// [MyoroSnackBarTypeEnum.attention].
  final Color? attentionBorderColor;

  /// [MyoroSnackBarTypeEnum.success].
  final Color? successBorderColor;

  /// [MyoroSnackBarTypeEnum.error].
  final Color? errorBorderColor;

  /// Border of the snack bar.
  final double? borderWidth;

  /// Border radius of the snack bar.
  final BorderRadius? borderRadius;

  /// Padding of the content of the snack bar.
  final EdgeInsets? padding;

  /// Spacing between [_Message]/[MyoroSnackBar.child] & [_CloseButton].
  final double? spacing;

  /// Text style of [_Message].
  final TextStyle? messageTextStyle;

  /// [MyoroIconConfiguration] of [_CloseButton].
  final MyoroIconConfiguration? closeButtonIconConfiguration;
}
