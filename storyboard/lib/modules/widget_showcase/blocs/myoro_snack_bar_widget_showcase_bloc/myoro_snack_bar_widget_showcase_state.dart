part of 'myoro_snack_bar_widget_showcase_bloc.dart';

final class MyoroSnackBarWidgetShowcaseState extends Equatable {
  /// [MyoroSnackBar.snackBarType].
  final MyoroSnackBarTypeEnum snackBarType;

  /// [MyoroSnackBar.showCloseButton].
  final bool showCloseButton;

  /// [MyoroSnackBar.message].
  final String message;

  /// [MyoroSnackBar.child].
  final bool childEnabled;

  MyoroSnackBarWidgetShowcaseState({
    this.snackBarType = MyoroSnackBarTypeEnum.standard,
    this.showCloseButton = true,
    this.message = '',
    this.childEnabled = true,
  }) : assert(
         message.isNotEmpty ^ childEnabled,
         '[MyoroSnackBarWidgetShowcaseState]: [message] must not be null (x)or [childEnabled] must be true.',
       );

  MyoroSnackBarWidgetShowcaseState copyWith({
    MyoroSnackBarTypeEnum? snackBarType,
    bool? showCloseButton,
    String? message,
    bool? childEnabled,
  }) {
    message =
        childEnabled == false ? 'Hello, World!' : (message ?? this.message);
    childEnabled = childEnabled ?? message.isEmpty;

    return MyoroSnackBarWidgetShowcaseState(
      snackBarType: snackBarType ?? this.snackBarType,
      showCloseButton: showCloseButton ?? this.showCloseButton,
      message: message,
      childEnabled: childEnabled,
    );
  }

  @override
  String toString() =>
      'MyoroSnackBarWidgetShowcaseState(\n'
      '  snackBarType: $snackBarType,\n'
      '  showCloseButton: $showCloseButton,\n'
      '  message: $message,\n'
      '  childEnabled: $childEnabled,\n'
      ');';

  @override
  List<Object?> get props {
    return [snackBarType, showCloseButton, message, childEnabled];
  }
}
