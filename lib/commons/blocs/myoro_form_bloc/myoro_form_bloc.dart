import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_form_state.dart';
part 'myoro_form_event.dart';

/// BloC to manage the form process in [MyoroForm].
final class MyoroFormBloc<T> extends Bloc<MyoroFormEvent, MyoroFormState<T>> {
  MyoroFormBloc(MyoroFormRequest<T> request) : super(MyoroFormState<T>()) {
    on<FinishFormEvent>((event, emit) async {
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
          print('[MyoroFormBloc.FinishFormEvent]: HTTP exception: "$errorMessage".');
        }
      } catch (genericError, stackTrace) {
        errorMessage = genericError.toString();
        if (kDebugMode) {
          print('[MyoroFormBloc.FinishFormEvent]: Generic error: "$errorMessage".');
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
