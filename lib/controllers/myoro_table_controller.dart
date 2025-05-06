import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/blocs/myoro_table_bloc/myoro_table_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [Bloc] adapter controller of a [MyoroTable].
class MyoroTableController<T> {
  late MyoroTableBloc<T> bloc;

  /// [FetchEvent]
  ///
  /// Fetches the [MyoroTablePagination] of the [MyoroTable].
  void fetch() {
    bloc.add(const FetchEvent());
  }
}
