import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';

/// A model to present a filter (of a request for example).
final class MyoroFilter<T> extends Equatable {
  /// Key of the filter.
  final String key;

  /// Value of the filter.
  final T value;

  const MyoroFilter({required this.key, required this.value});

  static MyoroFilter fake() {
    return MyoroFilter(
      key: faker.randomGenerator.string(100),
      value: faker.randomGenerator.boolean(),
    );
  }

  MyoroFilter<T> copyWith({String? key, T? value}) {
    return MyoroFilter(key: key ?? this.key, value: value ?? this.value);
  }

  @override
  List<Object?> get props {
    return [key, value];
  }

  @override
  String toString() =>
      'MyoroFilter<$T>(\n'
      '  key: $key,\n'
      '  value: $value,\n'
      ');';
}
