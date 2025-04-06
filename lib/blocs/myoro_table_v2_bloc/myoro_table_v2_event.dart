part of 'myoro_table_v2_bloc.dart';

@immutable
sealed class MyoroTableV2Event<T> {
  const MyoroTableV2Event();
}

final class FetchEvent<T> extends MyoroTableV2Event<T> {
  const FetchEvent();
}
