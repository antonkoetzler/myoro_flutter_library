import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function which generates a fake object of the type provided.
///
/// TODO: Needs to be tested.
T myoroFake<T>() {
  // [EdgeInsets]
  if (T is EdgeInsets) {
    return EdgeInsets.all(faker.randomGenerator.decimal(scale: 20)) as T;
  }

  // [IconData]
  if (T is IconData) {
    return kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)] as T;
  }

  throw UnimplementedError('[myoroFake]: $T has no implementation!');
}
