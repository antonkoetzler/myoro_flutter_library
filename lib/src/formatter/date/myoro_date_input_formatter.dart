import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_function/_format_dd_mm.dart';
part '_function/_format_dd_mm_yy.dart';
part '_function/_format_dd_mm_yyyy.dart';
part '_function/_format_mm_dd_yy.dart';
part '_function/_format_mm_dd_yyyy.dart';
part '_function/_format_mm_yy.dart';
part '_function/_format_mm_yyyy.dart';

/// Input formatter to create a date.
final class MyoroDateInputFormatter extends TextInputFormatter implements MyoroInputFormatter {
  MyoroDateInputFormatter({required this.format, this.minDate, this.maxDate});

  /// Date format.
  final MyoroDateFormatEnum format;

  /// Min date.
  final DateTime? minDate;

  /// Max date.
  final DateTime? maxDate;

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return switch (format) {
      MyoroDateFormatEnum.ddMm => _formatDdMm(oldValue, newValue, minDate, maxDate),
      MyoroDateFormatEnum.ddMmYy => _formatDdMmYy(oldValue, newValue, minDate, maxDate),
      MyoroDateFormatEnum.ddMmYyyy => _formatDdMmYyyy(oldValue, newValue, minDate, maxDate),
      MyoroDateFormatEnum.mmDdYy => _formatMmDdYy(oldValue, newValue, minDate, maxDate),
      MyoroDateFormatEnum.mmDdYyyy => _formatMmDdYyyy(oldValue, newValue, minDate, maxDate),
      MyoroDateFormatEnum.mmYy => _formatMmYy(oldValue, newValue, minDate, maxDate),
      MyoroDateFormatEnum.mmYyyy => _formatMmYyyy(oldValue, newValue, minDate, maxDate),
    };
  }

  @override
  String get initialText {
    return minDate == null
        ? switch (format) {
          MyoroDateFormatEnum.ddMm => '00/00',
          MyoroDateFormatEnum.ddMmYy => '00/00/00',
          MyoroDateFormatEnum.ddMmYyyy => '00/00/0000',
          MyoroDateFormatEnum.mmDdYy => '00/00/00',
          MyoroDateFormatEnum.mmDdYyyy => '00/00/0000',
          MyoroDateFormatEnum.mmYy => '00/00',
          MyoroDateFormatEnum.mmYyyy => '00/0000',
        }
        : DateFormat(format.pattern).format(minDate!);
  }
}
