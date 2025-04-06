import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_table_v2_state.dart';
part 'myoro_table_v2_event.dart';

typedef _Emitter<T> = Emitter<MyoroTableV2State<T>>;

/// [Bloc] to manage all state in [MyoroTableV2].
final class MyoroTableV2Bloc<T>
    extends Bloc<MyoroTableV2Event<T>, MyoroTableV2State<T>> {
  late final MyoroTableV2Configuration<T> _configuration;

  MyoroDataConfiguration<T> get _dataConfiguration {
    return _configuration.dataConfiguration;
  }

  MyoroTableV2Bloc(MyoroTableV2Configuration<T> configuration)
    : super(MyoroTableV2State<T>()) {
    _configuration = configuration;

    on<FetchEvent<T>>((event, emit) async => await _fetchEvent(event, emit));
  }

  Future<void> _fetchEvent(FetchEvent<T> event, _Emitter<T> emit) async {
    await _treatExceptions(emit, event, () async {
      final List<T> items = await _dataConfiguration.items;
      emit(state.copyWith(status: MyoroRequestEnum.success, items: items));
    });
  }

  Future<void> _treatExceptions(
    _Emitter<T> emit,
    MyoroTableV2Event<T> event,
    Function() function,
  ) async {
    String? errorMessage;

    try {
      emit(state.copyWith(status: MyoroRequestEnum.loading));
      await function();
    } on HttpException catch (httpError) {
      errorMessage = httpError.message;
      if (kDebugMode) {
        print(
          '[MyoroTableV2Bloc<$T>.${event.runtimeType}]: HTTP exception: "$errorMessage"',
        );
      }
    } catch (genericError, stackTrace) {
      errorMessage = genericError.toString();
      if (kDebugMode) {
        print(
          '[MyoroTableV2Bloc<$T>.${event.runtimeType}]: Generic exception: "$errorMessage"',
        );
        print('Stack trace:\n$stackTrace');
      }
    }

    if (errorMessage != null) {
      emit(
        state.copyWith(
          status: MyoroRequestEnum.error,
          errorMessage: errorMessage,
        ),
      );
    }
  }
}
