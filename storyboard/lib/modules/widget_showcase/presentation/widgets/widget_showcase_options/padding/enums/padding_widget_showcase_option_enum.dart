import 'package:faker/faker.dart';

/// Enum to decide which [EdgeInsets] constructor is being applied.
enum PaddingWidgetShowcaseOptionEnum {
  /// [EdgeInsets.all]
  all,

  /// [EdgeInsets.symmetric]
  symmetric,

  /// [EdgeInsets.only]
  only;

  factory PaddingWidgetShowcaseOptionEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  bool get isAll => this == all;
  bool get isSymmetric => this == symmetric;
  bool get isOnly => this == only;
}
