// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_pie_graph_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroPieGraphConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroPieGraphConfiguration with _$MyoroPieGraphConfigurationMixin {}
/// ```
mixin _$MyoroPieGraphConfigurationMixin {
  MyoroPieGraphConfiguration get self => this as MyoroPieGraphConfiguration;

  MyoroPieGraphConfiguration copyWith({
    MyoroPieGraphEnum? typeEnum,
    Widget? centerWidget,
    bool centerWidgetProvided = true,
    List<MyoroPieGraphItem>? items,
  }) {
    return MyoroPieGraphConfiguration(
      typeEnum: typeEnum ?? self.typeEnum,
      centerWidget: centerWidgetProvided ? (centerWidget ?? self.centerWidget) : null,
      items: items ?? self.items,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroPieGraphConfiguration &&
        other.runtimeType == runtimeType &&
        other.typeEnum == self.typeEnum &&
        other.centerWidget == self.centerWidget &&
        other.items == self.items;
  }

  @override
  int get hashCode {
    return Object.hash(self.typeEnum, self.centerWidget, self.items);
  }

  @override
  String toString() =>
      'MyoroPieGraphConfiguration(\n'
      '  typeEnum: ${self.typeEnum},\n'
      '  centerWidget: ${self.centerWidget},\n'
      '  items: ${self.items},\n'
      ');';
}
