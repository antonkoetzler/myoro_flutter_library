import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller to be able to call [MyoroResolverBloc.ExecuteRequestEvent] to refresh a [MyoroResolver].
final class MyoroResolverController {
  late final MyoroResolverBloc _bloc;
  void refresh() => _bloc.add(const ExecuteRequestEvent());
  set bloc(MyoroResolverBloc bloc) => _bloc = bloc;
}
