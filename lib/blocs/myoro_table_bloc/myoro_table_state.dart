part of 'myoro_table_bloc.dart';

@immutable
class MyoroTableState<T> extends Equatable {
  const MyoroTableState();

  MyoroTableState<T> copyWith() {
    return this;
  }

  @override
  List<Object?> get props {
    return const [];
  }

  @override
  String toString() =>
      'MyoroTableState(\n'
      ');';
}
