import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_table_state.dart';
part 'myoro_table_event.dart';

/// [Bloc] of [MyoroTable].
///
/// TODO: Needs to be tested.
class MyoroTableBloc<T> extends Bloc<MyoroTableEvent<T>, MyoroTableState<T>> {
  MyoroTableBloc() : super(MyoroTableState<T>());
}
