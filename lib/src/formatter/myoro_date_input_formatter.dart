import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Input formatter to create a date.
///
/// TODO: Redo to accept min and max date arguments. Might need to remove this mask_text_input_formatter; too basic.
class MyoroDateInputFormatter extends TextInputFormatter implements MyoroInputFormatter {
  MyoroDateInputFormatter({this.minDate, this.maxDate});

  /// Min date accepted by the formatter.
  final DateTime? minDate;

  /// Max date accepted by the formatter.
  final DateTime? maxDate;

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    HELLO;
  }

  @override
  String get initialText => '00/00/0000';
}
