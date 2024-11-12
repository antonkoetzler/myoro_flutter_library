import 'package:flutter/services.dart';

/// [TextInputFormatter] to only accept numbers (integer/double) and only allow a range of numbers.
final class MyoroNumberInputFormatter extends TextInputFormatter {
  final double? min;
  final double? max;
  final int? decimalPlaces;

  MyoroNumberInputFormatter({
    this.min,
    this.max,
    this.decimalPlaces,
  });

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    // Accepts only numbers.
    final regex = RegExp(r'^[0-9]+$');

    // Input empty case
    if (newValue.text.isEmpty) {
      return TextEditingValue(text: 0.toStringAsFixed(decimalPlaces ?? 0));
    }

    double result = 0;
    final bool cursorOnLastCharacter = newValue.selection.baseOffset == newValue.text.length;
    final bool decimalPlacesNotNull = decimalPlaces != null;

    // Character added case.
    if (newValue.text.length > oldValue.text.length) {
      final newCharacter = newValue.text.substring(
        oldValue.selection.baseOffset,
        newValue.selection.baseOffset,
      );

      // Return to old text if a bad character was inserted.
      if (!regex.hasMatch(newCharacter)) {
        return oldValue;
      } else {
        // Auto-inserting the number if it was added on the last character.
        //
        // i.e. 0.00 --> 0.01 --> 0.11 --> 1.11 --> etc
        if (cursorOnLastCharacter) {
          if (decimalPlacesNotNull) {
            // Multiplying by 10 to shift everything to the left, then adding the new number.
            result = double.parse(newValue.text) * 10;
          } else {
            // If it's only integers, we don't have to do anything.
            result = double.parse(newValue.text);
          }
        }
        // Case where the cursor is not at the last index.
        else {
          result = double.parse(newValue.text);
        }
      }
    }
    // Character removed case.
    else {
      // Auto-removing the number if it was added on the last character.
      //
      // i.e. 1.11 --> 0.11 --> 0.01 --> 0.00
      if (cursorOnLastCharacter) {
        if (decimalPlacesNotNull) {
          // Dividing by 10 to shift everything to the right.
          result = double.parse(newValue.text) / 10;
        } else {
          // If it's only integers, we don't have to do anything.
          result = double.parse(newValue.text);
        }
      }
      // Case where the cursor is not at the last index.
      else {
        result = double.parse(newValue.text);
      }
    }

    final String formattedResult = result.toStringAsFixed(decimalPlaces ?? 0);
    return TextEditingValue(
      text: formattedResult,
    );
  }
}
