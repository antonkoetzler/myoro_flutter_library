import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller to be able to call [MyoroResolverBloc.ExecuteRequestEvent] to refresh a [MyoroResolver].
final class MyoroResolverController {
  MyoroResolverBloc? _bloc;

  /// Make the request of the [MyoroResolver] again.
  void refresh() => _bloc!.add(const ExecuteRequestEvent());

  set bloc(MyoroResolverBloc bloc) => _bloc = bloc;
}
