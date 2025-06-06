// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_bar_graph_bar.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroBarGraphBarExtension on MyoroBarGraphBar {
  MyoroBarGraphBar copyWith({
    double? y,
    Color? color,
    bool colorProvided = true,
    List<MyoroBarGraphBarSection>? barSections,
  }) {
    return MyoroBarGraphBar(
      y: y ?? this.y,
      color: colorProvided ? (color ?? this.color) : null,
      barSections: barSections ?? this.barSections,
    );
  }
}

/// Apply this mixin to [MyoroBarGraphBar] once the code is generated.
///
/// ```dart
/// class MyoroBarGraphBar with $MyoroBarGraphBarMixin {}
/// ```
mixin $MyoroBarGraphBarMixin {
  MyoroBarGraphBar get self => this as MyoroBarGraphBar;

  @override
  bool operator ==(Object other) {
    return other is MyoroBarGraphBar &&
        other.runtimeType == runtimeType &&
        other.y == self.y &&
        other.color == self.color &&
        other.barSections == self.barSections;
  }

  @override
  int get hashCode {
    return Object.hash(self.y, self.color, self.barSections);
  }

  @override
  String toString() =>
      'MyoroBarGraphBar(\n'
      '  y: ${self.y},\n'
      '  color: ${self.color},\n'
      '  barSections: ${self.barSections},\n'
      ');';
}
