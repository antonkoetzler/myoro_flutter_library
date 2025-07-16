import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

YOU ARE HERE.

void main() {
  String? validation() {
    return 'Validation error';
  }

  String request() {
    return faker.lorem.word();
  }

  var onSuccessExecutedQuantity = 0;
  void onSuccess(String? data) {
    onSuccessExecutedQuantity += 1;
  }

  var onErrorExecutedQuantity = 0;
  void onError(String errorMessage) {
    onErrorExecutedQuantity += 1;
  }

  final controller = MyoroFormController<String>(
    configuration: MyoroFormConfiguration(
      validation: validation,
      request: request,
      onSuccess: onSuccess,
      onError: onError,
    ),
  );

  tearDown(controller.dispose);

  testWidgets('MyoroFormController.fetch', (tester) async {
    await tester.pumpWidget(MyoroWidgetTester(child: MyoroForm(configuration: configuration)));
  });
}
