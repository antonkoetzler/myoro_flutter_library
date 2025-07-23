import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_snack_bar_configuration.g.dart';

/// Configuration model of [MyoroSnackBar].
@immutable
@myoroModel
class MyoroSnackBarConfiguration with _$MyoroSnackBarConfigurationMixin {
  static const snackBarTypeDefaultValue = MyoroSnackBarTypeEnum.standard;
  static const showCloseButtonDefaultValue = true;
  static const messageDefaultValue = '';

  const MyoroSnackBarConfiguration({
    this.snackBarType = snackBarTypeDefaultValue,
    this.showCloseButton = showCloseButtonDefaultValue,
    this.message = messageDefaultValue,
    this.child,
  }) : assert((message.length > 0) ^ (child != null), '[MyoroSnackBar]: [message] (x)or [child] must be provided.');

  // coverage:ignore-start
  factory MyoroSnackBarConfiguration.fake({bool? messageProvided}) {
    messageProvided = messageProvided ?? faker.randomGenerator.boolean();

    return MyoroSnackBarConfiguration(
      snackBarType: MyoroSnackBarTypeEnum.fake(),
      showCloseButton: faker.randomGenerator.boolean(),
      message: messageProvided ? faker.randomGenerator.string(10) : messageDefaultValue,
      child: messageProvided ? null : const SizedBox.shrink(),
    );
  }
  // coverage:ignore-end

  /// Type of snack bar dialog.
  final MyoroSnackBarTypeEnum snackBarType;

  /// Whether or not to display [_CloseButton].
  final bool showCloseButton;

  /// [String] content mode of the snack bar.
  final String message;

  /// [Widget] content mode of the snack bar.
  final Widget? child;
}
