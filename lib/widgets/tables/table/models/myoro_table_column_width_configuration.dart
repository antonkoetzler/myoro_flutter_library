import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_table_column_width_configuration.g.dart';

/// Width configuration of a [MyoroTable].
@immutable
@myoroModel
class MyoroTableColumnWidthConfiguration with $MyoroTableColumnWidthConfigurationMixin {
  /// Width configuration enum.
  final MyoroTableColumnWidthConfigurationEnum typeEnum;

  /// Fixed width when [typeEnum] is [MyoroTableColumnWidthConfigurationEnum.fixed].
  final double? fixedWidth;

  const MyoroTableColumnWidthConfiguration({required this.typeEnum, this.fixedWidth})
    : assert(
        (typeEnum == MyoroTableColumnWidthConfigurationEnum.fixed) ? (fixedWidth != null) : (fixedWidth == null),
        '[MyoroTableColumnWidthConfiguration]: If [typeEnum] is [MyoroTableColumnWidthConfigurationEnum.fixed], '
        '[fixedWidth] cannot be null. Vice versa, [fixedWidth] must be null if [typeEnum] is any other value.',
      );

  factory MyoroTableColumnWidthConfiguration.fake() {
    final typeEnum = MyoroTableColumnWidthConfigurationEnum.fake();

    return MyoroTableColumnWidthConfiguration(
      typeEnum: typeEnum,
      fixedWidth: typeEnum.isFixed ? faker.randomGenerator.decimal(scale: 50) : null,
    );
  }
}
