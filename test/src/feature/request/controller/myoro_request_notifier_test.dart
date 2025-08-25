import 'dart:io';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroRequestNotifier.fetch success case', () async {
    final notifier = MyoroRequestNotifier<String>(requestCallback: faker.lorem.word);
    final states = <MyoroRequestEnum>[];
    notifier.addListener(() => states.add(notifier.status));
    await notifier.fetch();
    expect(states, [MyoroRequestEnum.loading, MyoroRequestEnum.success]);
    notifier.dispose();
  });

  test('MyoroRequestNotifier.fetch HTTP exception case', () async {
    final notifier = MyoroRequestNotifier<String>(requestCallback: () => throw HttpException(faker.lorem.word()));
    final states = <MyoroRequestEnum>[];
    notifier.addListener(() => states.add(notifier.status));
    await notifier.fetch();
    expect(states, [MyoroRequestEnum.loading, MyoroRequestEnum.error]);
    notifier.dispose();
  });

  test('MyoroRequestNotifier.fetch generic exception case', () async {
    final notifier = MyoroRequestNotifier<String>(requestCallback: () => throw Exception());
    final states = <MyoroRequestEnum>[];
    notifier.addListener(() => states.add(notifier.status));
    await notifier.fetch();
    expect(states, [MyoroRequestEnum.loading, MyoroRequestEnum.error]);
    notifier.dispose();
  });

  test('MyoroRequestNotifier getters', () {
    final notifier = MyoroRequestNotifier<String>();
    expect(notifier.request, isA<MyoroRequest<String>>());
    expect(notifier.status, isA<MyoroRequestEnum>());
    expect(notifier.errorMessage, isA<String?>());
    expect(notifier.data, isA<String?>());
    notifier.dispose();
  });
}
