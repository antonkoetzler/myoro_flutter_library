import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model of a column of a [MyoroTable].
@immutable
class MyoroTableColumn extends Equatable {
  /// Width configuration of the [MyoroTableColumn].
  final MyoroTableColumnWidthConfiguration widthConfiguration;

  /// [Widget] of the column.
  final Widget child;

  const MyoroTableColumn({
    this.widthConfiguration = const MyoroTableColumnWidthConfiguration(
      typeEnum: MyoroTableColumnWidthConfigurationEnum.intrinsic,
    ),
    required this.child,
  });

  MyoroTableColumn.fake()
    : widthConfiguration = MyoroTableColumnWidthConfiguration.fake(),
      child = const SizedBox.shrink();

  MyoroTableColumn copyWith({
    MyoroTableColumnWidthConfiguration? widthConfiguration,
    Widget? child,
  }) {
    return MyoroTableColumn(
      widthConfiguration: widthConfiguration ?? this.widthConfiguration,
      child: child ?? this.child,
    );
  }

  @override
  List<Object?> get props {
    return [widthConfiguration, child];
  }

  @override
  String toString() =>
      'MyoroTableColumn(\n'
      '  widthConfiguration: $widthConfiguration,\n'
      '  child: $child,\n'
      ');';
}
