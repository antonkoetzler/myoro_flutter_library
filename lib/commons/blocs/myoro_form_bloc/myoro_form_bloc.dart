import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_form_state.dart';
part 'myoro_form_event.dart';

/// BloC to manage the form process in [MyoroForm].
final class MyoroFormBloc<T> extends Bloc<MyoroFormEvent, MyoroFormState<T>> {
  MyoroFormBloc(
    GlobalKey<FormState> key,
    MyoroFormValidation? validation,
    MyoroFormRequest<T>? request,
  ) : super(MyoroFormState<T>()) {
    on<FinishFormEvent>((event, emit) async {
      emit(state.copyWith(status: MyoroRequestEnum.loading));

      // Validation function passed in [MyoroForm].
      final String? validationErrorMessage = validation?.call();

      // Flutter's [Form] validation call, this will check validation functions
      // in, for example, a [MyoroInput] with [MyoroInput.validation] provided.
      final bool formKeyValidation = key.currentState?.validate() ?? true;

      if (validationErrorMessage != null || !formKeyValidation) {
        emit(
          state.copyWith(
            status: MyoroRequestEnum.error,
            errorMessage:
                !formKeyValidation
                    ? 'Form not completed.'
                    : validationErrorMessage,
          ),
        );
        return;
      }

      String? errorMessage;
      try {
        final T? result = await request?.call();

        emit(state.copyWith(status: MyoroRequestEnum.success, result: result));
      } on HttpException catch (httpError) {
        errorMessage = httpError.message;
        if (kDebugMode) {
          print(
            '[MyoroFormBloc.FinishFormEvent]: HTTP exception: "$errorMessage".',
          );
        }
      } catch (genericError, stackTrace) {
        errorMessage = genericError.toString();
        if (kDebugMode) {
          print(
            '[MyoroFormBloc.FinishFormEvent]: Generic error: "$errorMessage".',
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
    });
  }
}
