import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/blocs/myoro_form_bloc/myoro_form_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

// Unit test for [MyoroFormBloc].
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final formKey = GlobalKey<FormState>();
  const validationErrorMessage = 'Error.';
  const result = 'Success.';

  blocTest(
    '[MyoroFormBloc.FinishFormEvent]: Emits error state when provided [MyoroForm] validation callback returns an error.',
    build: () => MyoroFormBloc(formKey, () => validationErrorMessage, null),
    act: (MyoroFormBloc bloc) => bloc.add(const FinishFormEvent()),
    expect:
        () => const [
          MyoroFormState(status: MyoroRequestEnum.loading),
          MyoroFormState(status: MyoroRequestEnum.error, errorMessage: validationErrorMessage),
        ],
  );

  testWidgets(
    '[MyoroFormBloc.FinishFormEvent]: Emits error state when a input\'s validation callback returns an error.',
    (WidgetTester tester) async {
      final controller = MyoroFormController();

      await tester.pumpWidget(
        MyoroWidgetTester(
          child: MyoroForm(
            controller: controller,
            builder: (_, __, ___) {
              return MyoroInput(
                configuration: MyoroInputConfiguration(
                  inputStyle: MyoroInputStyleEnum.outlined,
                  validation: (_) => validationErrorMessage,
                ),
              );
            },
          ),
        ),
      );
      await tester.pumpAndSettle();

      // Trigger the [MyoroInput]'s validation callback.
      controller.finish();
      await tester.pumpAndSettle();

      // Confirm that the [MyoroInput] is showing the error message.
      expect(find.text(validationErrorMessage), findsOneWidget);
    },
  );

  blocTest(
    '[MyoroFormBloc.FinishFormEvent]: Emits successful state when there are not errors from validation callbacks.',
    build: () => MyoroFormBloc<String>(formKey, null, () => result),
    act: (MyoroFormBloc<String> bloc) => bloc.add(const FinishFormEvent()),
    expect:
        () => const [
          MyoroFormState<String>(status: MyoroRequestEnum.loading),
          MyoroFormState<String>(status: MyoroRequestEnum.success, result: result),
        ],
  );
}
