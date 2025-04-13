import 'package:equatable/equatable.dart';

/// A model to present a filter (of a request for example).
final class MyoroFilter<T> extends Equatable {
  /// Key of the filter.
  final String key;

  /// Value of the filter.
  final T value;

  const MyoroFilter({required this.key, required this.value});

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
