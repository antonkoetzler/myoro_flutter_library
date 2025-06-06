// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_modal_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroModalConfigurationExtension on MyoroModalConfiguration {
  MyoroModalConfiguration copyWith({
    bool? barrierDismissable,
    bool? useRootNavigator,
    BoxConstraints? constraints,
    bool constraintsProvided = true,
    void Function()? onClosed,
    bool onClosedProvided = true,
    String? title,
    bool titleProvided = true,
    bool? showCloseButton,
    EdgeInsets? padding,
    bool paddingProvided = true,
    EdgeInsets? closeButtonPadding,
    bool closeButtonPaddingProvided = true,
  }) {
    return MyoroModalConfiguration(
      barrierDismissable: barrierDismissable ?? this.barrierDismissable,
      useRootNavigator: useRootNavigator ?? this.useRootNavigator,
      constraints:
          constraintsProvided ? (constraints ?? this.constraints) : null,
      onClosed: onClosedProvided ? (onClosed ?? this.onClosed) : null,
      title: titleProvided ? (title ?? this.title) : null,
      showCloseButton: showCloseButton ?? this.showCloseButton,
      padding: paddingProvided ? (padding ?? this.padding) : null,
      closeButtonPadding:
          closeButtonPaddingProvided
              ? (closeButtonPadding ?? this.closeButtonPadding)
              : null,
    );
  }
}

/// Apply this mixin to [MyoroModalConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroModalConfiguration with $MyoroModalConfigurationMixin {}
/// ```
mixin $MyoroModalConfigurationMixin {
  MyoroModalConfiguration get self => this as MyoroModalConfiguration;

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
