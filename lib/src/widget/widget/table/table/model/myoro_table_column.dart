import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_table_column.g.dart';

/// Model of a column of a [MyoroTable].
@immutable
@myoroModel
class MyoroTableColumn with _$MyoroTableColumnMixin {
  const MyoroTableColumn({
    this.tooltipMessage,
    this.widthConfiguration = const MyoroTableColumnWidthConfiguration(
      typeEnum: MyoroTableColumnWidthConfigurationEnum.intrinsic,
    ),
    required this.child,
  });

  MyoroTableColumn.fake()
    : tooltipMessage = faker.randomGenerator.boolean() ? faker.lorem.word() : null,
      widthConfiguration = MyoroTableColumnWidthConfiguration.fake(),
      child = const SizedBox.shrink();

  /// [MyoroTooltip.text]
  final String? tooltipMessage;

  /// Width configuration of the [MyoroTableColumn].
  final MyoroTableColumnWidthConfiguration widthConfiguration;

  /// [Widget] of the column.
  final Widget child;
}
