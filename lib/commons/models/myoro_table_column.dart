import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model to store the configuration options for a column in a [MyoroTable].
final class MyoroTableColumn extends Equatable {
  /// Width setting of the column.
  final MyoroTableColumnWidth widthConfiguration;

  /// Title of the column.
  final String title;

  /// If the title of the column is centered, does not apply to non-title columns.
  final TextAlign? titleTextAlign;

  /// Ordenation callback. If provided, the column may be clicked to activate this callback.
  ///
  /// Once activated, the ordenation button next to the column title will be hovered to signify that it is active.
  final MyoroCheckboxOnChanged? ordenationCallback;

  /// Ordenation filter.
  final String? ordenationFilter;

  const MyoroTableColumn({
    this.widthConfiguration = const MyoroTableColumnWidth.expanding(),
    required this.title,
    required this.titleTextAlign,
    this.ordenationCallback,
    this.ordenationFilter,
  }) : assert(
          ordenationCallback != null ? ordenationFilter != null : ordenationFilter == null,
          '[MyoroTableColumn]: If [ordenationCallback] is provided, [ordenationFilter] must be provided. '
          'As well, if [ordenationCallback] is [null], [ordenationFilter] should also be [null].',
        );

  MyoroTableColumn copyWith({
    MyoroTableColumnWidth? widthConfiguration,
    String? title,
    TextAlign? titleTextAlign,
    MyoroCheckboxOnChanged? ordenationCallback,
    String? ordenationFilter,
  }) {
    return MyoroTableColumn(
      widthConfiguration: widthConfiguration ?? this.widthConfiguration,
      title: title ?? this.title,
      titleTextAlign: titleTextAlign ?? this.titleTextAlign,
      ordenationCallback: ordenationCallback ?? this.ordenationCallback,
      ordenationFilter: ordenationFilter ?? this.ordenationFilter,
    );
  }

  MyoroTableColumn.fake([BuildContext? contitle])
      : widthConfiguration = MyoroTableColumnWidth.fake(),
        title = faker.randomGenerator.string(50),
        titleTextAlign = TextAlign.values[faker.randomGenerator.integer(TextAlign.values.length)],
        ordenationCallback = null,
        ordenationFilter = null;

  @override
  String toString() => ''
      'MyoroTableColumn(\n'
      '  widthConfiguration: $widthConfiguration,\n'
      '  title: $title,\n'
      '  titleTextAlign: $titleTextAlign,\n'
      '  ordenationCallback: $ordenationCallback,\n'
      '  ordenationFilter: $ordenationFilter,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      widthConfiguration,
      title,
      titleTextAlign,
      ordenationCallback,
      ordenationFilter,
    ];
  }
}
