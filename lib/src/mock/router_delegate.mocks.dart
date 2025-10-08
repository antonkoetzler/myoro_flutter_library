import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:mocktail/mocktail.dart';

/// [RouterDelegate] mock.
class MockRouterDelegate extends Mock implements RouterDelegate<Object> {
  MockRouterDelegate({String? text}) : _text = text ?? faker.lorem.word();

  final String _text;

  @override
  Widget build(context) => Text(_text);

  @override
  Future<void> setNewRoutePath(Object configuration) async {}
}
