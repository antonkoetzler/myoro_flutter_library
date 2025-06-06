// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_app_bar_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroAppBarConfigurationExtension on MyoroAppBarConfiguration {
  MyoroAppBarConfiguration copyWith({
    bool? bordered,
    Color? backgroundColor,
    bool backgroundColorProvided = true,
    Widget? child,
  }) {
    return MyoroAppBarConfiguration(
      bordered: bordered ?? this.bordered,
      backgroundColor:
          backgroundColorProvided
              ? (backgroundColor ?? this.backgroundColor)
              : null,
      child: child ?? this.child,
    );
  }
}

/// Apply this mixin to [MyoroAppBarConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroAppBarConfiguration with $MyoroAppBarConfigurationMixin {}
/// ```
mixin $MyoroAppBarConfigurationMixin {
  MyoroAppBarConfiguration get self => this as MyoroAppBarConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroAppBarConfiguration &&
        other.runtimeType == runtimeType &&
        other.bordered == self.bordered &&
        other.backgroundColor == self.backgroundColor &&
        other.child == self.child;
  }

  @override
  int get hashCode {
    return Object.hash(self.bordered, self.backgroundColor, self.child);
  }

  @override
  String toString() =>
      'MyoroAppBarConfiguration(\n'
      '  bordered: ${self.bordered},\n'
      '  backgroundColor: ${self.backgroundColor},\n'
      '  child: ${self.child},\n'
      ');';
}
