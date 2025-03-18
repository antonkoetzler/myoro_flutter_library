import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Ordenation callback executed to apply filters in a [MyoroTable].
typedef MyoroTableColumnOrdenationCallback = Map<String, dynamic> Function();

/// Model that represents a column & title of a [MyoroTable].
final class MyoroTableColumn extends Equatable {
  /// Title of the column.
  final String title;

  /// [TextStyle] of [title].
  final TextStyle? titleTextStyle;

  /// Width configuration of the column.
  final MyoroTableColumnWidth? widthConfiguration;

  /// Ordenation callback that is activated when the
  /// ordenation button next to said column is clicked.
  final MyoroTableColumnOrdenationCallback? ordenationCallback;

  const MyoroTableColumn({
    required this.title,
    this.titleTextStyle,
    this.widthConfiguration,
    this.ordenationCallback,
  });

  MyoroTableColumn.fake({this.titleTextStyle})
    : title = faker.lorem.word(),
      widthConfiguration = MyoroTableColumnWidth.fake(),
      ordenationCallback = null;

  MyoroTableColumn copyWith({
    String? title,
    TextStyle? titleTextStyle,
    MyoroTableColumnWidth? widthConfiguration,
    MyoroTableColumnOrdenationCallback? ordenationCallback,
  }) {
    return MyoroTableColumn(
      title: title ?? this.title,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      widthConfiguration: widthConfiguration ?? this.widthConfiguration,
      ordenationCallback: ordenationCallback ?? this.ordenationCallback,
    );
  }

  @override
  String toString() =>
      ''
      'MyoroTableColumn(\n'
      '  title: $title,\n'
      '  titleTextStyle: $titleTextStyle,\n'
      '  widthConfiguration: $widthConfiguration,\n'
      '  ordenationCallback: $ordenationCallback,\n'
      ');';

  @override
  List<Object?> get props {
    return [title, titleTextStyle, widthConfiguration, ordenationCallback];
  }
}
