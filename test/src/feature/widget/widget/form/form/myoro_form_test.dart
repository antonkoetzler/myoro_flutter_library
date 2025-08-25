import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  const formValidationErrorText = 'Fora Moraes!';
  const inputValidationErrorText = 'Hello, World!';

  final successData = faker.lorem.word();

  var onSuccessExecuted = false;
  var onErrorExecuted = false;

  final inputController = TextEditingController(text: formValidationErrorText);

  String? validation() {
    return inputController.text == formValidationErrorText ? formValidationErrorText : null;
  }

  String? inputValidation(String text) {
    return text == inputValidationErrorText ? 'Input validation error' : null;
  }

  String request() {
    return successData;
  }

  void onSuccess(String? data) {
    onSuccessExecuted = true;
  }

  void onError(String errorMessage) {
    onErrorExecuted = true;
  }

  final formConfiguration = MyoroFormConfiguration(
    validation: validation,
    request: request,
    onSuccess: onSuccess,
    onError: onError,
  );
  final formNotifier = MyoroFormNotifier<String>(configuration: formConfiguration);

  tearDownAll(() {
    formNotifier.dispose();
    inputController.dispose();
  });

  testWidgets('MyoroForm formConfiguration and controller not provided assertion case', (tester) async {
    expect(() => MyoroForm(builder: (_, _) => const SizedBox.shrink()), throwsAssertionError);
  });

  testWidgets('MyoroForm formConfiguration and controller provided assertion case', (tester) async {
    expect(
      () => MyoroForm(
        controller: formNotifier,
        configuration: formConfiguration,
        builder: (_, _) => const SizedBox.shrink(),
      ),
      throwsAssertionError,
    );
  });

  testWidgets('MyoroForm flow', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroForm(
          controller: formNotifier,
          builder: (_, _) {
            return MyoroInput(
              configuration: MyoroInputConfiguration(validation: inputValidation, controller: inputController),
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    // [MyoroFormConfiguration.validation] error case.
    await formNotifier.fetch();
    await tester.pumpAndSettle();
    expect(onErrorExecuted, isTrue);
    expect(formNotifier.request.status.isError, isTrue);
    expect(formNotifier.request.errorMessage, formValidationErrorText);
    onErrorExecuted = false;

    // [MyoroInputConfiguration.validation] error case.
    inputController.text = inputValidationErrorText;
    await formNotifier.fetch();
    await tester.pumpAndSettle();
    expect(onErrorExecuted, isTrue);
    expect(formNotifier.request.status.isError, isTrue);
    expect(formNotifier.request.errorMessage?.isEmpty, isTrue);
    onErrorExecuted = false;

    // Success case.
    inputController.text = '';
    await formNotifier.fetch();
    await tester.pumpAndSettle();
    expect(onSuccessExecuted, isTrue);
    expect(formNotifier.request.status.isSuccess, isTrue);
    expect(formNotifier.request.data, successData);
    onSuccessExecuted = false;
  });
}
