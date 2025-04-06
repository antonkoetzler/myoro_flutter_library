import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of a [MyoroTableV2].
final class MyoroTableV2Controller<T> {
  /// [MyoroTableV2Bloc] that is connected to this [MyoroTableV2Controller].
  late MyoroTableV2Bloc<T> bloc;

  /// Fetches the items of the [MyoroTableV2].
  void fetch() {
    bloc.add(const FetchEvent());
  }
}
