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
}
