import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroRequest.createIdleState', () {
    expect(const MyoroRequest().createIdleState().status.isIdle, isTrue);
  });

  test('MyoroRequest.createLoadingState', () {
    expect(const MyoroRequest().createLoadingState().status.isLoading, isTrue);
  });

  test('MyoroRequest.createSuccessState', () {
    final data = faker.lorem.word();
    final request = const MyoroRequest().createSuccessState(data);
    expect(request.status.isSuccess, isTrue);
    expect(request.data, data);
  });

  test('MyoroRequest.createErrorState', () {
    final errorMessage = faker.lorem.word();
    final request = const MyoroRequest().createErrorState(errorMessage);
    expect(request.status.isError, isTrue);
    expect(request.errorMessage, errorMessage);
  });

  test('MyoroRequest.copyWith', () {
    final firstConfiguration = MyoroRequest.fake(data: faker.randomGenerator.boolean() ? faker.lorem.word() : null);
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroRequest.fake(data: faker.randomGenerator.boolean() ? faker.lorem.word() : null);
    expect(
      firstConfiguration.copyWith(
        status: secondConfiguration.status,
        errorMessage: secondConfiguration.errorMessage,
        data: secondConfiguration.data,
        dataProvided: secondConfiguration.data != null,
      ),
      secondConfiguration,
    );
  });
}
