import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MockRouterConfig constructor', () {
    final mock = MockRouterConfig<String>();
    expect(mock, isNotNull);
  });

  test('MockRouterDelegate constructor', () {
    final mock = MockRouterDelegate();
    expect(mock, isNotNull);
  });

  test('MockRouteInformationParser constructor', () {
    final mock = MockRouteInformationParser();
    expect(mock, isNotNull);
  });

  test('MockThemeExtension constructor', () {
    const mock = MockThemeExtension();
    expect(mock, isNotNull);
  });
}
