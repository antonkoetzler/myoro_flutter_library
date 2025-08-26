import 'package:flutter/material.dart';
import 'package:mocktail/mocktail.dart';

/// [RouteInformationParser] mock.
class MockRouteInformationParser extends Mock implements RouteInformationParser<Object> {
  factory MockRouteInformationParser() {
    final mock = MockRouteInformationParser._();
    return mock;
  }

  MockRouteInformationParser._();
}
