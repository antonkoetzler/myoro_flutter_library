import 'package:faker/faker.dart';

/// Enum to decide which [EdgeInsets] constructor is being applied.
enum PaddingWidgetShowcaseOptionEnum {
  /// [EdgeInsets.all]
  all,

  /// [EdgeInsets.symmetric]
  symmetric,

  /// [EdgeInsets.only]
  only;

  // coverage:ignore-start
  factory PaddingWidgetShowcaseOptionEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }
  // coverage:ignore-end

  bool get isAll => this == all;
  bool get isSymmetric => this == symmetric;
  bool get isOnly => this == only;
}
