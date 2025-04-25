import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model of a title column of a [MyoroTable].
class MyoroTableColumn extends Equatable {
  /// Width configuration of the [MyoroTableColumn].
  final MyoroTableColumnWidthConfiguration widthConfiguration;

  /// [Widget] of the [MyoroTableColumn].
  ///
  /// What if you want to just pass some basic text? [MyoroTableColumn]
  /// only supports passing a [Widget] rather than a [String] for basic
  /// text because of the case where you want a customized [Text]. Thus,
  /// if you really just want to pass simple text following the standard
  /// styling of [MyoroTable], create a [Text] and it will automatically
  /// apply [MyoroTableThemeExtension.titleColumnTextStyle].
  final Widget child;

  const MyoroTableColumn({required this.widthConfiguration, required this.child});

  MyoroTableColumn.fake()
    : widthConfiguration = MyoroTableColumnWidthConfiguration.fake(),
      child = Text(faker.lorem.word(), maxLines: 1, overflow: TextOverflow.ellipsis);

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
