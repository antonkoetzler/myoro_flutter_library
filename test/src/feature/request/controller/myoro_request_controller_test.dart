import 'dart:io';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroRequestController.fetch success case', () async {
    final controller = MyoroRequestController<String>(requestCallback: faker.lorem.word);
    final states = <MyoroRequestEnum>[];
    controller.addListener(() => states.add(controller.status));
    await controller.fetch();
    expect(states, [MyoroRequestEnum.loading, MyoroRequestEnum.success]);
    controller.dispose();
  });

  test('MyoroRequestController.fetch HTTP exception case', () async {
    final controller = MyoroRequestController<String>(requestCallback: () => throw HttpException(faker.lorem.word()));
    final states = <MyoroRequestEnum>[];
    controller.addListener(() => states.add(controller.status));
    await controller.fetch();
    expect(states, [MyoroRequestEnum.loading, MyoroRequestEnum.error]);
    controller.dispose();
  });

  test('MyoroRequestController.fetch generic exception case', () async {
    final controller = MyoroRequestController<String>(requestCallback: () => throw Exception());
    final states = <MyoroRequestEnum>[];
    controller.addListener(() => states.add(controller.status));
    await controller.fetch();
    expect(states, [MyoroRequestEnum.loading, MyoroRequestEnum.error]);
    controller.dispose();
  });

  test('MyoroRequestController getters', () {
    final controller = MyoroRequestController<String>();
    expect(controller.request, isA<MyoroRequest<String>>());
    expect(controller.status, isA<MyoroRequestEnum>());
    expect(controller.errorMessage, isA<String?>());
    expect(controller.data, isA<String?>());
    controller.dispose();
  });
}
