import 'package:faker/faker.dart';
import 'package:intl/intl.dart';

/// Enum to encapsulate various date formats.
enum MyoroDateFormatEnum {
  // Day/Month
  ddMm('dd/MM'),

  // Day/Month/Yr
  ddMmYy('dd/MM/yy'),

  // Day/Month/Year
  ddMmYyyy('dd/MM/yyyy'),

  // Month/Day/Yr
  mmDdYy('MM/dd/yy'),

  // Month/Day/Year
  mmDdYyyy('MM/dd/yyyy'),

  // Month/Yr
  mmYy('MM/yy'),

  // Month/Year
  mmYyyy('MM/yyyy');

  const MyoroDateFormatEnum(this.pattern);

  factory MyoroDateFormatEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// [DateFormat] pattern.
  final String pattern;

  bool get isDdMm => this == ddMm;
  bool get isDdMmYy => this == ddMmYy;
  bool get isDdMmYyyy => this == ddMmYyyy;
  bool get isMmDdYy => this == mmDdYy;
  bool get isMmDdYyyy => this == mmDdYyyy;
  bool get isMmYy => this == mmYy;
  bool get isMmYyyy => this == mmYyyy;
}
