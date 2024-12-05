import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model to store the configuration options for a column in a [MyoroTable].
final class MyoroTableColumn extends Equatable {
  /// Width setting of the column.
  final MyoroTableColumnWidth widthConfiguration;

  /// Title/content of the column.
  final Widget child;

  const MyoroTableColumn({
    this.widthConfiguration = const MyoroTableColumnWidth.expanding(),
    required this.child,
  });

  MyoroTableColumn copyWith({
    MyoroTableColumnWidth? widthConfiguration,
    Widget? child,
  }) {
    return MyoroTableColumn(
      widthConfiguration: widthConfiguration ?? this.widthConfiguration,
      child: child ?? this.child,
    );
  }

  MyoroTableColumn.fake([BuildContext? context])
      : widthConfiguration = MyoroTableColumnWidth.fake(),
        child = Text(
          faker.randomGenerator.string(50),
          style: TextStyle(
            color: context?.resolveThemeExtension<MyoroTableThemeExtension>().backgroundColor ?? MyoroColorTheme.attention,
          ),
        );

  @override
  String toString() => ''
      'MyoroTableColumn(\n'
      '  widthConfiguration: $widthConfiguration,\n'
      '  child: $child,\n'
      ');';

  @override
  List<Object?> get props => [widthConfiguration, child];
}
