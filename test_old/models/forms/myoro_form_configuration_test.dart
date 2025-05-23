import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final MyoroFormConfiguration<String> model = _configuration;

  test('MyoroFormConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final MyoroFormConfiguration<String> otherModel = _configuration;
    expect(
      model.copyWith(
        controller: otherModel.controller,
        controllerProvided: otherModel.controller != null,
        validation: otherModel.validation,
        validationProvided: otherModel.validation != null,
        request: otherModel.request,
        requestProvided: otherModel.request != null,
        onSuccess: otherModel.onSuccess,
        onSuccessProvided: otherModel.onSuccess != null,
        onError: otherModel.onError,
        onErrorProvided: otherModel.onError != null,
        builder: otherModel.builder,
      ),
      otherModel,
    );
  });

  test('MyoroFormConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroFormConfiguration<String>(\n'
      '  controller: ${model.controller},\n'
      '  validation: ${model.validation},\n'
      '  request: ${model.request},\n'
      '  onSuccess: ${model.onSuccess},\n'
      '  onError: ${model.onError},\n'
      '  builder: ${model.builder},\n'
      ');',
    );
  });
}

MyoroFormConfiguration<String> get _configuration {
  return MyoroFormConfiguration(
    controller: faker.randomGenerator.boolean() ? MyoroFormController() : null,
    validation:
        faker.randomGenerator.boolean()
            ? (() => faker.randomGenerator.boolean() ? '' : null)
            : null,
    request: faker.randomGenerator.boolean() ? (() => faker.lorem.word()) : null,
    onSuccess: faker.randomGenerator.boolean() ? ((_) {}) : null,
    onError: faker.randomGenerator.boolean() ? ((_) {}) : null,
    builder: ((_, __, ___) => const SizedBox.shrink()),
  );
}
