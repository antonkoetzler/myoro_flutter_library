import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = _fake;

  test('MyoroMenuConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = _fake;
    expect(
      model.copyWith(
        controller: otherModel.controller,
        controllerProvided: otherModel.controller != null,
        constraints: otherModel.constraints,
        request: otherModel.request,
        onEndReachedRequest: otherModel.onEndReachedRequest,
        onEndReachedRequestProvided: otherModel.onEndReachedRequest != null,
        searchCallback: otherModel.searchCallback,
        searchCallbackProvided: otherModel.searchCallback != null,
        itemBuilder: otherModel.itemBuilder,
      ),
      otherModel,
    );
  });

  test('MyoroMenuConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroMenuConfiguration<String>(\n'
      '  controller: ${model.controller},\n'
      '  constraints: ${model.constraints},\n'
      '  request: ${model.request},\n'
      '  onEndReachedRequest: ${model.onEndReachedRequest},\n'
      '  searchCallback: ${model.searchCallback},\n'
      '  itemBuilder: ${model.itemBuilder},\n'
      ');',
    );
  });
}

MyoroMenuConfiguration<String> get _fake {
  final double minWidth = faker.randomGenerator.decimal(scale: 500);
  final double minHeight = faker.randomGenerator.decimal(scale: 500);

  final Set<String> items =
      List.generate(
        faker.randomGenerator.integer(9999),
        (int index) => '#$index: ${faker.lorem.word()}',
      ).toSet();

  return MyoroMenuConfiguration(
    controller: faker.randomGenerator.boolean() ? MyoroMenuController() : null,
    constraints: BoxConstraints(
      minWidth: minWidth,
      maxWidth: faker.randomGenerator.decimal(scale: 1000, min: minWidth),
      minHeight: minHeight,
      maxHeight: faker.randomGenerator.decimal(scale: 1000, min: minHeight),
    ),
    request: () => items,
    onEndReachedRequest: faker.randomGenerator.boolean() ? (_) => items : null,
    searchCallback: faker.randomGenerator.boolean() ? (_, __) => items : null,
    itemBuilder:
        (String item) => MyoroMenuItem.fake().copyWith(
          textConfiguration: MyoroIconTextButtonTextConfiguration(text: item),
        ),
  );
}
