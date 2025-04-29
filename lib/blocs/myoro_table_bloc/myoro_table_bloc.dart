import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_table_state.dart';
part 'myoro_table_event.dart';

typedef _Emitter<T> = Emitter<MyoroTableState<T>>;

/// [Bloc] to manage all state in [MyoroTable].
///
/// TODO: Needs to be tested.
final class MyoroTableBloc<T> extends Bloc<MyoroTableEvent<T>, MyoroTableState<T>> {
  late final MyoroTableConfiguration<T> _configuration;

  MyoroTableBloc(MyoroTableConfiguration<T> configuration)
    : super(MyoroTableState<T>(pagination: MyoroTablePagination())) {
    _configuration = configuration;

    on<FetchEvent<T>>(_fetchEvent);
    on<AddFiltersEvent<T>>(_addFiltersEvent);
    on<RemoveFiltersEvent<T>>(_removeFiltersEvent);
    on<ClearFiltersEvent<T>>(_clearFiltersEvent);
    on<SetCurrentPageEvent<T>>(_setCurrentPageEvent);
    on<SetItemsPerPageEvent<T>>(_setItemsPerPageEvent);
  }

  Future<void> _fetchEvent(FetchEvent<T> event, _Emitter<T> emit) async {
    await _treatRequest(emit, event, () async {
      final MyoroTablePagination<T> pagination = await _configuration.request(state.filters);
      emit(state.copyWith(status: MyoroRequestEnum.success, pagination: pagination));
    });
  }

  void _addFiltersEvent(AddFiltersEvent<T> event, _Emitter<T> emit) {
    emit(state.copyWith(filters: Set.from(state.filters)..addAll(event.filters)));
  }

  void _removeFiltersEvent(RemoveFiltersEvent<T> event, _Emitter<T> emit) {
    emit(state.copyWith(filters: Set.from(state.filters)..removeAll(event.filters)));
  }

  void _clearFiltersEvent(ClearFiltersEvent<T> event, _Emitter<T> emit) {
    emit(state.copyWith(filters: const {}));
  }

  void _setCurrentPageEvent(SetCurrentPageEvent<T> event, _Emitter<T> emit) {
    emit(state.copyWith(pagination: state.pagination.copyWith(currentPage: event.currentPage)));
  }

  void _setItemsPerPageEvent(SetItemsPerPageEvent<T> event, _Emitter<T> emit) {
    emit(state.copyWith(pagination: state.pagination.copyWith(itemsPerPage: event.itemsPerPage)));
  }

  Future<void> _treatRequest(
    _Emitter<T> emit,
    MyoroTableEvent<T> event,
    Function() function,
  ) async {
    String? errorMessage;

    try {
      emit(state.copyWith(status: MyoroRequestEnum.loading));
      await function();
    } on HttpException catch (httpError) {
      errorMessage = httpError.message;
      if (kDebugMode) {
        print('[MyoroTableBloc<$T>.${event.runtimeType}]: HTTP exception: "$errorMessage"');
      }
    } catch (genericError, stackTrace) {
      errorMessage = genericError.toString();
      if (kDebugMode) {
        print('[MyoroTableBloc<$T>.${event.runtimeType}]: Generic exception: "$errorMessage"');
        print('Stack trace:\n$stackTrace');
      }
    }

    if (errorMessage != null) {
      emit(state.copyWith(status: MyoroRequestEnum.error, errorMessage: errorMessage));
    }
  }
}
