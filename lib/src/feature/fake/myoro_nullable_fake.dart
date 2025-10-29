import 'package:faker/faker.dart';

import 'myoro_fake.dart';

/// [myoroFake], but can randomly return a nullable object.
T? myoroNullableFake<T>() {
  return faker.randomGenerator.boolean() ? myoroFake<T>() : null;
}
