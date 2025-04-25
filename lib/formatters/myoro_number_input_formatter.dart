import 'package:flutter/services.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [TextInputFormatter] to only accept numbers (integer/double) and only allow a range of numbers.
final class MyoroNumberInputFormatter extends TextInputFormatter implements MyoroInputFormatter {
  final double min;
  final double? max;
  final int decimalPlaces;

  MyoroNumberInputFormatter({this.min = 0, this.max, this.decimalPlaces = 0});

  String _formatResult(double formattedResult) => formattedResult.toStringAsFixed(decimalPlaces);

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final decimalPlacesNotZero = decimalPlaces > 0;

    // Assert that only numbers are ever provided.
    if (!RegExp(r'^[0-9]+$').hasMatch(newValue.text)) {
      return oldValue;
    }

    // Input empty case
    if (newValue.text.isEmpty) {
      return TextEditingValue(text: min.toStringAsFixed(decimalPlaces));
    }

    String formattedResult = '';
    int selection = 0;
    final bool cursorOnLastCharacter = newValue.selection.baseOffset == newValue.text.length;
    final double newValueAsDouble = double.parse(newValue.text);

    // Character added case.
    if (newValue.text.length > oldValue.text.length) {
      // Auto-inserting the number if it was added on the last character.
      //
      // i.e. 0.00 --> 0.01 --> 0.11 --> 1.11 --> etc
      if (cursorOnLastCharacter) {
        if (decimalPlacesNotZero) {
          // Multiplying by 10 to shift everything to the left, then adding the new number.
          final temp = newValueAsDouble * 10;

          // Checking that the number isn't greater than the max.
          formattedResult = _formatResult(_isGreaterThenMax(temp) ? max! : temp);
        } else {
          // If it's only integers, we don't have to do anyting.
          formattedResult = _formatResult(
            _isGreaterThenMax(newValueAsDouble) ? max! : newValueAsDouble,
          );
        }
        selection = formattedResult.length;
      }
      // Case where the cursor is not at the last index.
      else {
        formattedResult = _formatResult(
          _isGreaterThenMax(newValueAsDouble) ? max! : newValueAsDouble,
        );
        selection = newValue.selection.baseOffset;
      }
    }
    // Character removed case.
    else {
      // Auto-removing the number if it was added on the last character.
      //
      // i.e. 1.11 --> 0.11 --> 0.01 --> 0.00
      if (cursorOnLastCharacter) {
        if (decimalPlacesNotZero) {
          // Dividing by 10 to shift everything to the right.
          final double temp = newValueAsDouble / 10;
          formattedResult = _formatResult(_isLessThenMin(temp) ? min : temp);
        } else {
          // If it's only integers, we don't have to do anything.
          formattedResult = _formatResult(
            _isLessThenMin(newValueAsDouble) ? min : newValueAsDouble,
          );
        }
        selection = formattedResult.toString().length;
      }
      // Case where the cursor is not at the last index.
      else {
        formattedResult = _formatResult(newValueAsDouble);
        selection = newValue.selection.baseOffset;
      }
    }

    return TextEditingValue(
      text: formattedResult,
      selection: TextSelection(baseOffset: selection, extentOffset: selection),
    );
  }

  bool _isGreaterThenMax(double number) {
    return max != null && number > max!;
  }

  bool _isLessThenMin(double number) {
    return min > number;
  }

  @override
  String get initialText => min.toStringAsFixed(decimalPlaces);
}
