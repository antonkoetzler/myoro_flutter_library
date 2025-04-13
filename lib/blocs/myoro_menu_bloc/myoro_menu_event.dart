part of 'myoro_menu_bloc.dart';

@immutable
sealed class MyoroMenuEvent<T> {
  const MyoroMenuEvent();
}

/// Requests the items of the [MyoroMenu].
final class FetchEvent<T> extends MyoroMenuEvent<T> {
  const FetchEvent();
}

/// Creates a filtered list of [MyoroMenuState.items] based on the [query] provided.
final class SearchEvent<T> extends MyoroMenuEvent<T> {
  final String query;

  const SearchEvent(this.query);
}
