import 'package:myoro_flutter_library/blocs/myoro_resolver_bloc/myoro_resolver_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller to be able to call [ExecuteRequestEvent] to refresh a [MyoroResolver].
class MyoroResolverController {
  MyoroResolverBloc? _bloc;

  /// Make the request of the [MyoroResolver] again.
  void refresh() => _bloc!.add(const ExecuteRequestEvent());

  set bloc(MyoroResolverBloc bloc) => _bloc = bloc;
}
