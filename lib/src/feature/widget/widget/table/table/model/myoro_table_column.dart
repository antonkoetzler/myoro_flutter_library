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

  // coverage:ignore-start
  MyoroTableColumn.fake()
    : tooltipMessage = faker.randomGenerator.boolean() ? faker.lorem.word() : null,
      widthConfiguration = MyoroTableColumnWidthConfiguration.fake(),
      child = const SizedBox.shrink();
  // coverage:ignore-end

  /// [MyoroTooltip.text]
  final String? tooltipMessage;

  /// Width configuration of the [MyoroTableColumn].
  final MyoroTableColumnWidthConfiguration widthConfiguration;

  /// [Widget] of the column.
  final Widget child;

  MyoroTableColumn copyWith({
    String? tooltipMessage,
    bool tooltipMessageProvided = true,
    MyoroTableColumnWidthConfiguration? widthConfiguration,
    Widget? child,
  }) {
    return MyoroTableColumn(
      tooltipMessage: tooltipMessageProvided ? (tooltipMessage ?? this.tooltipMessage) : null,
      widthConfiguration: widthConfiguration ?? this.widthConfiguration,
      child: child ?? this.child,
    );
  }
}
