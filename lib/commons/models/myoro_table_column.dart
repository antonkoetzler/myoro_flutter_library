import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model that represents a column & title of a [MyoroTable].
final class MyoroTableColumn extends Equatable {
  /// Title of the column.
  final String title;

  /// [TextStyle] of [title].
  final TextStyle? titleTextStyle;

  /// Width configuration of the column.
  final MyoroTableColumnWidth? widthConfiguration;

  const MyoroTableColumn({
    required this.title,
    this.titleTextStyle,
    this.widthConfiguration,
  });

  MyoroTableColumn.fake({this.titleTextStyle})
      : title = faker.lorem.word(),
        widthConfiguration = MyoroTableColumnWidth.fake();

  MyoroTableColumn copyWith({
    String? title,
    TextStyle? titleTextStyle,
    MyoroTableColumnWidth? widthConfiguration,
  }) {
    return MyoroTableColumn(
      title: title ?? this.title,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      widthConfiguration: widthConfiguration ?? this.widthConfiguration,
    );
  }

  @override
  String toString() => ''
      'MyoroTableColumn(\n'
      '  title: $title,\n'
      '  titleTextStyle: $titleTextStyle,\n'
      '  widthConfiguration: $widthConfiguration,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      title,
      titleTextStyle,
      widthConfiguration,
    ];
  }
}
