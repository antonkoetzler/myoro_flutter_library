// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_table_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroTableConfigurationExtension<T> on MyoroTableConfiguration<T> {
  MyoroTableConfiguration<T> copyWith({
    FutureOr<Set<T>> Function()? request,
    List<MyoroTableColumn>? columns,
    MyoroTableRow<T> Function(T)? rowBuilder,
  }) {
    return MyoroTableConfiguration(
      request: request ?? this.request,
      columns: columns ?? this.columns,
      rowBuilder: rowBuilder ?? this.rowBuilder,
    );
  }
}

/// Apply this mixin to [MyoroTableConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroTableConfiguration<T> with $MyoroTableConfigurationMixin<T> {}
/// ```
mixin $MyoroTableConfigurationMixin<T> {
  MyoroTableConfiguration<T> get self => this as MyoroTableConfiguration<T>;

  @override
  bool operator ==(Object other) {
    return other is MyoroTableConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.request == self.request &&
        other.columns == self.columns &&
        other.rowBuilder == self.rowBuilder;
  }

  @override
  int get hashCode {
    return Object.hash(self.request, self.columns, self.rowBuilder);
  }

  @override
  String toString() =>
      'MyoroTableConfiguration<T>(\n'
      '  request: ${self.request},\n'
      '  columns: ${self.columns},\n'
      '  rowBuilder: ${self.rowBuilder},\n'
      ');';
}
