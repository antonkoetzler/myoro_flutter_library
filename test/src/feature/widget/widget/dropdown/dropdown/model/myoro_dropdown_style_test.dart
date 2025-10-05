import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MyoroDropdownStyle', () {
    test('constructor with default values', () {
      const style = MyoroDropdownStyle();
      expect(style.spacing, isNull);
    });

    test('constructor with custom values', () {
      const spacing = 16.0;
      const style = MyoroDropdownStyle(spacing: spacing);
      expect(style.spacing, spacing);
    });

    test('fake constructor', () {
      final style = MyoroDropdownStyle.fake();
      expect(style.spacing, isA<double>());
    });

    test('lerp method with null values', () {
      final result = MyoroDropdownStyle.lerp(null, null, 0.5);
      expect(result.spacing, isNull);
    });

    test('lerp method with first null', () {
      const style2 = MyoroDropdownStyle(spacing: 20.0);
      final result = MyoroDropdownStyle.lerp(null, style2, 0.5);
      expect(result.spacing, 10.0);
    });

    test('lerp method with second null', () {
      const style1 = MyoroDropdownStyle(spacing: 10.0);
      final result = MyoroDropdownStyle.lerp(style1, null, 0.5);
      expect(result.spacing, 5.0);
    });

    test('lerp method with both values', () {
      const style1 = MyoroDropdownStyle(spacing: 10.0);
      const style2 = MyoroDropdownStyle(spacing: 20.0);
      final result = MyoroDropdownStyle.lerp(style1, style2, 0.5);
      expect(result.spacing, 15.0);
    });

    test('lerp method with t = 0', () {
      const style1 = MyoroDropdownStyle(spacing: 10.0);
      const style2 = MyoroDropdownStyle(spacing: 20.0);
      final result = MyoroDropdownStyle.lerp(style1, style2, 0.0);
      expect(result.spacing, 10.0);
    });

    test('lerp method with t = 1', () {
      const style1 = MyoroDropdownStyle(spacing: 10.0);
      const style2 = MyoroDropdownStyle(spacing: 20.0);
      final result = MyoroDropdownStyle.lerp(style1, style2, 1.0);
      expect(result.spacing, 20.0);
    });
  });
}
