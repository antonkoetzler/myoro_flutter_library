import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroFormConfiguration.copyWith', () {
    final firstConfiguration = MyoroFormConfiguration.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroFormConfiguration.fake();
    expect(
      firstConfiguration.copyWith(
        validation: secondConfiguration.validation,
        validationProvided: secondConfiguration.validation != null,
        request: secondConfiguration.request,
        requestProvided: secondConfiguration.request != null,
        onSuccess: secondConfiguration.onSuccess,
        onSuccessProvided: secondConfiguration.onSuccess != null,
        onError: secondConfiguration.onError,
        onErrorProvided: secondConfiguration.onError != null,
      ),
      secondConfiguration,
    );
  });
}
