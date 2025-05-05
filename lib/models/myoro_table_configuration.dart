import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration model of [MyoroTable].
///
/// TODO: Needs to be tested.
@immutable
class MyoroTableConfiguration<T> extends Equatable {
  /// Columns of the [MyoroTable].
  final List<MyoroTableColumn> columns;

  const MyoroTableConfiguration({required this.columns})
    : assert(columns.length != 0, '[MyoroTableConfiguration<$T>]: [columns] cannot be empty.');

  MyoroTableConfiguration.fake()
    : columns = List.generate(faker.randomGenerator.integer(10), (_) => MyoroTableColumn.fake());

  MyoroTableConfiguration copyWith({List<MyoroTableColumn>? columns}) {
    return MyoroTableConfiguration(columns: columns ?? this.columns);
  }

  @override
  List<Object?> get props {
    return [columns];
  }

  @override
  String toString() =>
      'MyoroTableConfiguration<$T>(\n'
      '  columns: $columns,\n'
      ');';
}
