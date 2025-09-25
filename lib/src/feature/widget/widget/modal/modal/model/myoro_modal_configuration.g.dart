// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_modal_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroModalConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroModalConfiguration<T> with _$MyoroModalConfigurationMixin<T> {}
/// ```
mixin _$MyoroModalConfigurationMixin<T> {
  MyoroModalConfiguration<T> get self => this as MyoroModalConfiguration<T>;

  MyoroModalConfiguration<T> copyWith({
    bool? barrierDismissable,
    bool? useRootNavigator,
    MyoroModalOnClosed<T>? onClosed,
    bool onClosedProvided = true,
    String? title,
    bool? showCloseButton,
  }) {
    return MyoroModalConfiguration(
      barrierDismissable: barrierDismissable ?? self.barrierDismissable,
      useRootNavigator: useRootNavigator ?? self.useRootNavigator,
      onClosed: onClosedProvided ? (onClosed ?? self.onClosed) : null,
      title: title ?? self.title,
      showCloseButton: showCloseButton ?? self.showCloseButton,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroModalConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.barrierDismissable == self.barrierDismissable &&
        other.useRootNavigator == self.useRootNavigator &&
        other.onClosed == self.onClosed &&
        other.title == self.title &&
        other.showCloseButton == self.showCloseButton;
  }

  @override
  int get hashCode {
    return Object.hash(self.barrierDismissable, self.useRootNavigator, self.onClosed, self.title, self.showCloseButton);
  }

  @override
  String toString() =>
      'MyoroModalConfiguration<T>(\n'
      '  barrierDismissable: ${self.barrierDismissable},\n'
      '  useRootNavigator: ${self.useRootNavigator},\n'
      '  onClosed: ${self.onClosed},\n'
      '  title: ${self.title},\n'
      '  showCloseButton: ${self.showCloseButton},\n'
      ');';
}
