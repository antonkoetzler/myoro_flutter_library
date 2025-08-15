// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_bar_graph_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroBarGraphConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroBarGraphConfiguration with _$MyoroBarGraphConfigurationMixin {}
/// ```
mixin _$MyoroBarGraphConfigurationMixin {
  MyoroBarGraphConfiguration get self => this as MyoroBarGraphConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroBarGraphConfiguration &&
        other.runtimeType == runtimeType &&
        other.sorted == self.sorted &&
        other.items == self.items;
  }

  @override
  int get hashCode {
    return Object.hash(self.sorted, self.items);
  }

  @override
  String toString() =>
      'MyoroBarGraphConfiguration(\n'
      '  sorted: ${self.sorted},\n'
      '  items: ${self.items},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $MyoroBarGraphConfigurationExtension on MyoroBarGraphConfiguration {
  MyoroBarGraphConfiguration copyWith({bool? sorted, List<MyoroBarGraphGroup>? items}) {
    return MyoroBarGraphConfiguration(sorted: sorted ?? self.sorted, items: items ?? self.items);
  }
}
