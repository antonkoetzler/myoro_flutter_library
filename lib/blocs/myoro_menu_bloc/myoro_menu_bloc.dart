import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_menu_state.dart';
part 'myoro_menu_event.dart';

typedef _Emitter<T> = Emitter<MyoroMenuState<T>>;

/// [Bloc] that controls the logic of a [MyoroMenu].
final class MyoroMenuBloc<T>
    extends Bloc<MyoroMenuEvent<T>, MyoroMenuState<T>> {
  late final MyoroMenuConfiguration<T> _configuration;

  MyoroMenuBloc(MyoroMenuConfiguration<T> configuration)
    : super(MyoroMenuState<T>()) {
    _configuration = configuration;
    on<FetchEvent<T>>(_fetchEvent);
    on<SearchEvent<T>>(_searchEvent);
  }

  Future<void> _fetchEvent(FetchEvent<T> event, _Emitter<T> emit) async {
    await _treatRequest(event, emit, () async {
      late final Set<T> items;
      final bool initialRequestMade = state.initialRequestMade;

      if (initialRequestMade && _configuration.onEndReachedRequest != null) {
        items = await _configuration.onEndReachedRequest!(state.items);
      } else {
        items = await _configuration.request();
      }

      emit(
        state.copyWith(
          status: MyoroRequestEnum.success,
          items: items,
          initialRequestMade: true,
        ),
      );
    });
  }

  void _searchEvent(SearchEvent<T> event, _Emitter<T> emit) {
    assert(
      _configuration.searchCallback != null,
      '[MyoroMenuBloc<$T>.SearchEvent]: [_configuration.searchCallback] cannot be null.',
    );

    final String query = event.query;
    final Set<T> items = state.items;

    emit(
      state.copyWith(
        queriedItems:
            query.isEmpty
                ? items
                : _configuration.searchCallback!(query, items),
      ),
    );
  }

  Future<void> _treatRequest(
    MyoroMenuEvent<T> event,
    _Emitter<T> emit,
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
          '[MyoroMenuBloc<$T>.${event.runtimeType}]: HTTP error: "$errorMessage".',
        );
      }
    } catch (error, stackTrace) {
      errorMessage = error.toString();
      if (kDebugMode) {
        print(
          '[MyoroMenuBloc<$T>.${event.runtimeType}]: Generic error: "$errorMessage".',
        );
        print('Stack trace:\n$stackTrace');
      }
    }

    if (errorMessage == null) return;

    emit(
      state.copyWith(
        status: MyoroRequestEnum.error,
        errorMessage: errorMessage,
      ),
    );
  }
}
