import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_table_state.dart';
part 'myoro_table_event.dart';

/// BLoC that pagination and filters of a [MyoroTable].
final class MyoroTableBloc extends Bloc<MyoroTableEvent, MyoroTableState> {
  MyoroTableBloc() : super(const MyoroTableState()) {}
}
