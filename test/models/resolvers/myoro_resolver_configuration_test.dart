import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroResolverConfiguration.copyWith', () {
    final model = _configuration;
    expect(model.copyWith(), model);
    final otherModel = _configuration;
    expect(
      model.copyWith(
        controller: otherModel.controller,
        controllerProvided: otherModel.controller != null,
        onSuccess: otherModel.onSuccess,
        onSuccessProvided: otherModel.onSuccess != null,
        onError: otherModel.onError,
        onErrorProvided: otherModel.onError != null,
        request: otherModel.request,
        builder: otherModel.builder,
      ),
      otherModel,
    );
  });

  test('MyoroResolverConfiguration.toString', () {
    final model = _configuration;
    expect(
      model.toString(),
      'MyoroResolverConfiguration(\n'
      '  controller: ${model.controller},\n'
      '  onSuccess: ${model.onSuccess},\n'
      '  onError: ${model.onError},\n'
      '  request: ${model.request},\n'
      '  builder: ${model.builder},\n'
      ');',
    );
  });
}

MyoroResolverConfiguration<String> get _configuration {
  return MyoroResolverConfiguration(
    controller: faker.randomGenerator.boolean() ? MyoroResolverController() : null,
    onSuccess: faker.randomGenerator.boolean() ? ((_) {}) : null,
    onError: faker.randomGenerator.boolean() ? ((_) {}) : null,
    request: (() => faker.lorem.word()),
    builder: ((_, __, ___, ____) => const SizedBox.shrink()),
  );
}
