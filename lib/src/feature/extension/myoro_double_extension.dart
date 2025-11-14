import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Extension of [double].
extension MyoroDoubleExtension on double {
  /// Converts a [double] to a price string.
  String toPrice([MyoroCurrencyEnum currency = MyoroCurrencyEnum.usd]) {
    final decimalSeparator = currency.decimalSeparator;
    final thousandsSeparator = decimalSeparator == ',' ? '.' : ',';

    // Format to 2 decimal places
    final rounded = toStringAsFixed(2);
    final parts = rounded.split('.');
    final integerPart = parts[0];
    final decimalPart = parts.length > 1 ? parts[1] : '00';

    /// Adds thousands separators to a number string.
    String addThousandsSeparator() {
      if (integerPart.length <= 3) return integerPart;

      final buffer = StringBuffer();
      final reversed = integerPart.split('').reversed.join();

      for (int i = 0; i < reversed.length; i++) {
        if (i > 0 && i % 3 == 0) {
          buffer.write(thousandsSeparator);
        }
        buffer.write(reversed[i]);
      }

      return buffer.toString().split('').reversed.join();
    }

    // Add thousands separators
    final integerWithSeparators = addThousandsSeparator();

    // Combine with currency symbol
    return '${currency.shortSymbol}$integerWithSeparators$decimalSeparator$decimalPart';
  }
}
