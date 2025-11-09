import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum encapsulating the months of the year.
enum MyoroMonthEnum {
  january(1),
  february(2),
  march(3),
  april(4),
  may(5),
  june(6),
  july(7),
  august(8),
  september(9),
  october(10),
  november(11),
  december(12);

  /// Default constructor.
  const MyoroMonthEnum(this.number);

  /// Number of the month.
  final int number;

  /// Label of the month.
  String getLabel(BuildContext context) {
    final localization = context.localization;
    final myoroMonthEnumJanuaryLabel = localization.myoroMonthEnumJanuaryLabel;
    final myoroMonthEnumFebruaryLabel = localization.myoroMonthEnumFebruaryLabel;
    final myoroMonthEnumMarchLabel = localization.myoroMonthEnumMarchLabel;
    final myoroMonthEnumAprilLabel = localization.myoroMonthEnumAprilLabel;
    final myoroMonthEnumMayLabel = localization.myoroMonthEnumMayLabel;
    final myoroMonthEnumJuneLabel = localization.myoroMonthEnumJuneLabel;
    final myoroMonthEnumJulyLabel = localization.myoroMonthEnumJulyLabel;
    final myoroMonthEnumAugustLabel = localization.myoroMonthEnumAugustLabel;
    final myoroMonthEnumSeptemberLabel = localization.myoroMonthEnumSeptemberLabel;
    final myoroMonthEnumOctoberLabel = localization.myoroMonthEnumOctoberLabel;
    final myoroMonthEnumNovemberLabel = localization.myoroMonthEnumNovemberLabel;
    final myoroMonthEnumDecemberLabel = localization.myoroMonthEnumDecemberLabel;

    return switch (this) {
      january => myoroMonthEnumJanuaryLabel,
      february => myoroMonthEnumFebruaryLabel,
      march => myoroMonthEnumMarchLabel,
      april => myoroMonthEnumAprilLabel,
      may => myoroMonthEnumMayLabel,
      june => myoroMonthEnumJuneLabel,
      july => myoroMonthEnumJulyLabel,
      august => myoroMonthEnumAugustLabel,
      september => myoroMonthEnumSeptemberLabel,
      october => myoroMonthEnumOctoberLabel,
      november => myoroMonthEnumNovemberLabel,
      december => myoroMonthEnumDecemberLabel,
    };
  }
}
