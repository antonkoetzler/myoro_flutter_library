import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_resolver_state.dart';
part 'myoro_resolver_event.dart';

/// BloC to make requests in [MyoroResolver].
final class MyoroResolverBloc<T> extends Bloc<MyoroResolverEvent, MyoroResolverState<T>> {
  MyoroResolverBloc(MyoroResolverRequest<T> request) : super(MyoroResolverState<T>()) {
    on<ExecuteRequestEvent>((event, emit) async {
      emit(state.copyWith(status: MyoroRequestEnum.loading));

      String? errorMessage;
      try {
        final T? result = await request.call();

        emit(
          state.copyWith(
            status: MyoroRequestEnum.success,
            result: result,
          ),
        );
      } on HttpException catch (httpError) {
        errorMessage = httpError.message;
        if (kDebugMode) {
          print('[MyoroResolverBloc.ExecuteRequestEvent]: HTTP exception: "$errorMessage".');
        }
      } catch (genericError, stackTrace) {
        errorMessage = genericError.toString();
        if (kDebugMode) {
          print('[MyoroResolverBloc.ExecuteRequestEvent]: Generic error: "$errorMessage".');
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
    });
  }
}
