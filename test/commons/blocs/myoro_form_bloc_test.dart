import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test for [MyoroFormBloc].
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final formKey = GlobalKey<FormState>();
  const validationErrorMessage = 'Error';
  const result = 'Success';

  blocTest(
    '[MyoroFormBloc.FinishFormEvent]: Emits error state when provided validation callbacks returns an error.',
    build: () => MyoroFormBloc(formKey, () => validationErrorMessage, null),
    act: (MyoroFormBloc bloc) => bloc.add(const FinishFormEvent()),
    expect: () => const [
      MyoroFormState(status: MyoroRequestEnum.loading),
      MyoroFormState(status: MyoroRequestEnum.error, errorMessage: validationErrorMessage),
    ],
  );

  blocTest(
    '[MyoroFormBloc.FinishFormEvent]: Emits success state when there are not errors from validation callbacks.',
    build: () => MyoroFormBloc<String>(formKey, null, () => result),
    act: (MyoroFormBloc<String> bloc) => bloc.add(const FinishFormEvent()),
    expect: () => const [
      MyoroFormState<String>(
        status: MyoroRequestEnum.loading,
      ),
      MyoroFormState<String>(
        status: MyoroRequestEnum.success,
        result: result,
      ),
    ],
  );
}
