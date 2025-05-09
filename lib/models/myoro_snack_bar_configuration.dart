import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration model of [MyoroSnackBar].
///
/// TODO: Needs to be tested.
class MyoroSnackBarConfiguration extends Equatable {
  static const snackBarTypeDefaultValue = MyoroSnackBarTypeEnum.standard;
  static const showCloseButtonDefaultValue = true;

  /// Type of snack bar dialog.
  final MyoroSnackBarTypeEnum snackBarType;

  /// Whether or not to display [_CloseButton].
  final bool showCloseButton;

  /// [String] content mode of the snack bar.
  final String message;

  /// [Widget] content mode of the snack bar.
  final Widget? child;

  const MyoroSnackBarConfiguration({
    this.snackBarType = snackBarTypeDefaultValue,
    this.showCloseButton = showCloseButtonDefaultValue,
    this.message = '',
    this.child,
  }) : assert((message.length > 0) ^ (child != null), '[MyoroSnackBar]: [message] (x)or [child] must be provided.');

  MyoroSnackBarConfiguration copyWith({
    MyoroSnackBarTypeEnum? snackBarType,
    bool? showCloseButton,
    String? message,
    Widget? child,
    bool childProvided = true,
  }) {
    return MyoroSnackBarConfiguration(
      snackBarType: snackBarType ?? this.snackBarType,
      showCloseButton: showCloseButton ?? this.showCloseButton,
      message: message ?? this.message,
      child: childProvided ? (child ?? this.child) : null,
    );
  }

  @override
  List<Object?> get props {
    return [snackBarType, showCloseButton, message, child];
  }

  @override
  String toString() =>
      'MyoroSnackBarConfiguration(\n'
      '  snackBarType: $snackBarType,\n'
      '  showCloseButton: $showCloseButton,\n'
      '  message: $message,\n'
      '  child: $child,\n'
      ');';
}
