import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model of a column of a [MyoroTable].
///
/// TODO: Needs to be tested.
@immutable
class MyoroTableColumn extends Equatable {
  /// [MyoroTooltip.text]
  final String? tooltipMessage;

  /// Width configuration of the [MyoroTableColumn].
  final MyoroTableColumnWidthConfiguration widthConfiguration;

  /// [Widget] of the column.
  final Widget child;

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

  @override
  List<Object?> get props {
    return [tooltipMessage, widthConfiguration, child];
  }

  @override
  String toString() =>
      'MyoroTableColumn(\n'
      '  tooltipMessage: $tooltipMessage\n'
      '  widthConfiguration: $widthConfiguration,\n'
      '  child: $child,\n'
      ');';
}
