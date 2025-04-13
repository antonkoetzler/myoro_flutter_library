import 'package:myoro_flutter_library/blocs/myoro_menu_bloc/myoro_menu_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of a [MyoroMenu].
class MyoroMenuController<T> {
  /// [MyoroMenuBloc] attached to this controller.
  late MyoroMenuBloc<T> bloc;

  /// Requests the items of the [MyoroMenu].
  void fetch() {
    bloc.add(const FetchEvent());
  }

  /// Creates a filtered list of [MyoroMenuState.items] based on the [query] provided.
  void search(String query) {
    bloc.add(SearchEvent(query));
  }
}
