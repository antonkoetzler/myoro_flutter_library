// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_modal_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroModalConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroModalConfiguration with _$MyoroModalConfigurationMixin {}
/// ```
mixin _$MyoroModalConfigurationMixin {
  MyoroModalConfiguration get self => this as MyoroModalConfiguration;

  MyoroModalConfiguration copyWith({
    bool? barrierDismissable,
    bool? useRootNavigator,
    BoxConstraints? constraints,
    bool constraintsProvided = true,
    void Function()? onClosed,
    bool onClosedProvided = true,
    String? title,
    bool? showCloseButton,
    EdgeInsets? padding,
    bool paddingProvided = true,
    EdgeInsets? closeButtonPadding,
    bool closeButtonPaddingProvided = true,
  }) {
    return MyoroModalConfiguration(
      barrierDismissable: barrierDismissable ?? self.barrierDismissable,
      useRootNavigator: useRootNavigator ?? self.useRootNavigator,
      constraints:
          constraintsProvided ? (constraints ?? self.constraints) : null,
      onClosed: onClosedProvided ? (onClosed ?? self.onClosed) : null,
      title: title ?? self.title,
      showCloseButton: showCloseButton ?? self.showCloseButton,
      padding: paddingProvided ? (padding ?? self.padding) : null,
      closeButtonPadding:
          closeButtonPaddingProvided
              ? (closeButtonPadding ?? self.closeButtonPadding)
              : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroModalConfiguration &&
        other.runtimeType == runtimeType &&
        other.barrierDismissable == self.barrierDismissable &&
        other.useRootNavigator == self.useRootNavigator &&
        other.constraints == self.constraints &&
        other.onClosed == self.onClosed &&
        other.title == self.title &&
        other.showCloseButton == self.showCloseButton &&
        other.padding == self.padding &&
        other.closeButtonPadding == self.closeButtonPadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.barrierDismissable,
      self.useRootNavigator,
      self.constraints,
      self.onClosed,
      self.title,
      self.showCloseButton,
      self.padding,
      self.closeButtonPadding,
    );
  }

  @override
  String toString() =>
      'MyoroModalConfiguration(\n'
      '  barrierDismissable: ${self.barrierDismissable},\n'
      '  useRootNavigator: ${self.useRootNavigator},\n'
      '  constraints: ${self.constraints},\n'
      '  onClosed: ${self.onClosed},\n'
      '  title: ${self.title},\n'
      '  showCloseButton: ${self.showCloseButton},\n'
      '  padding: ${self.padding},\n'
      '  closeButtonPadding: ${self.closeButtonPadding},\n'
      ');';
}
