// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_menu_item.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroMenuButtonItem] once the code is generated.
///
/// ```dart
/// class MyoroMenuButtonItem with _$MyoroMenuButtonItemMixin {}
/// ```
mixin _$MyoroMenuButtonItemMixin {
  MyoroMenuButtonItem get self => this as MyoroMenuButtonItem;

  MyoroMenuButtonItem copyWith({
    MyoroButtonConfiguration? configuration,
    bool configurationProvided = true,
    MyoroButtonBuilder? builder,
  }) {
    return MyoroMenuButtonItem(
      configuration: configurationProvided ? (configuration ?? self.configuration) : null,
      builder: builder ?? self.builder,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMenuButtonItem &&
        other.runtimeType == runtimeType &&
        other.configuration == self.configuration &&
        other.builder == self.builder;
  }

  @override
  int get hashCode {
    return Object.hash(self.configuration, self.builder);
  }

  @override
  String toString() =>
      'MyoroMenuButtonItem(\n'
      '  configuration: ${self.configuration},\n'
      '  builder: ${self.builder},\n'
      ');';
}

// coverage:ignore-file

/// Apply this mixin to [MyoroMenuIconTextButtonItem] once the code is generated.
///
/// ```dart
/// class MyoroMenuIconTextButtonItem with _$MyoroMenuIconTextButtonItemMixin {}
/// ```
mixin _$MyoroMenuIconTextButtonItemMixin {
  MyoroMenuIconTextButtonItem get self => this as MyoroMenuIconTextButtonItem;

  MyoroMenuIconTextButtonItem copyWith({MyoroIconTextButtonConfiguration? configuration}) {
    return MyoroMenuIconTextButtonItem(configuration: configuration ?? self.configuration);
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMenuIconTextButtonItem &&
        other.runtimeType == runtimeType &&
        other.configuration == self.configuration;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.configuration]);
  }

  @override
  String toString() =>
      'MyoroMenuIconTextButtonItem(\n'
      '  configuration: ${self.configuration},\n'
      ');';
}
