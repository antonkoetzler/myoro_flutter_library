import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  group('MyoroNumberInputFormatter', () {
    test('adds digit to end with decimalPlaces = 2', () {
      final formatter = MyoroNumberInputFormatter(decimalPlaces: 2, min: 0, max: 9.99);

      final result = formatter.formatEditUpdate(
        const TextEditingValue(text: '0.00', selection: TextSelection.collapsed(offset: 4)),
        const TextEditingValue(text: '0.001', selection: TextSelection.collapsed(offset: 5)),
      );

      expect(result.text, '0.01');
    });

    test('removes digit from end with decimalPlaces = 2', () {
      final formatter = MyoroNumberInputFormatter(decimalPlaces: 2, min: 0);

      final result = formatter.formatEditUpdate(
        const TextEditingValue(text: '1.11', selection: TextSelection.collapsed(offset: 4)),
        const TextEditingValue(text: '1.1', selection: TextSelection.collapsed(offset: 3)),
      );

      expect(result.text, '0.11');
    });

    test('disallows non-numeric input', () {
      final formatter = MyoroNumberInputFormatter(decimalPlaces: 2);

      final result = formatter.formatEditUpdate(
        const TextEditingValue(text: '1.11', selection: TextSelection.collapsed(offset: 4)),
        const TextEditingValue(text: '1.11a', selection: TextSelection.collapsed(offset: 5)),
      );

      expect(result.text, '1.11');
    });

    test('applies max limit', () {
      final formatter = MyoroNumberInputFormatter(decimalPlaces: 2, max: 2.00);

      final result = formatter.formatEditUpdate(
        const TextEditingValue(text: '2.00', selection: TextSelection.collapsed(offset: 4)),
        const TextEditingValue(text: '2.005', selection: TextSelection.collapsed(offset: 5)),
      );

      expect(result.text, '2.00');
    });

    test('resets to min on empty input', () {
      final formatter = MyoroNumberInputFormatter(decimalPlaces: 2, min: 1.23);

      final result = formatter.formatEditUpdate(
        const TextEditingValue(text: '1.23', selection: TextSelection.collapsed(offset: 4)),
        const TextEditingValue(text: '', selection: TextSelection.collapsed(offset: 0)),
      );

      expect(result.text, '1.23');
    });

    test('adds digit at end with decimalPlaces = 0 (integer only)', () {
      final formatter = MyoroNumberInputFormatter(decimalPlaces: 0, min: 0, max: 9);

      final result = formatter.formatEditUpdate(
        const TextEditingValue(text: '1', selection: TextSelection.collapsed(offset: 1)),
        const TextEditingValue(text: '11', selection: TextSelection.collapsed(offset: 2)),
      );

      expect(result.text, '9');
    });

    test('adds digit not at end', () {
      final formatter = MyoroNumberInputFormatter(decimalPlaces: 2);

      final result = formatter.formatEditUpdate(
        const TextEditingValue(text: '1.11', selection: TextSelection.collapsed(offset: 1)),
        const TextEditingValue(text: '10.11', selection: TextSelection.collapsed(offset: 2)),
      );

      expect(result.text, '10.11');
    });

    test('removes digit at end below min (triggers _isLessThenMin with decimalPlaces = 0)', () {
      final formatter = MyoroNumberInputFormatter(decimalPlaces: 0, min: 5);

      final result = formatter.formatEditUpdate(
        const TextEditingValue(text: '5', selection: TextSelection.collapsed(offset: 1)),
        const TextEditingValue(text: '0', selection: TextSelection.collapsed(offset: 1)),
      );

      expect(result.text, '5');
    });

    test('removes digit not at end', () {
      final formatter = MyoroNumberInputFormatter(decimalPlaces: 2);

      final result = formatter.formatEditUpdate(
        const TextEditingValue(text: '1.23', selection: TextSelection.collapsed(offset: 2)),
        const TextEditingValue(text: '1.3', selection: TextSelection.collapsed(offset: 2)),
      );

      expect(result.text, '1.30');
    });

    test('initialText returns formatted min', () {
      final formatter = MyoroNumberInputFormatter(decimalPlaces: 2, min: 1.23);
      expect(formatter.initialText, '1.23');
    });
  });
}
