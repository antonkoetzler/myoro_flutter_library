import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model of a title column of a [MyoroTableV2].
final class MyoroTableV2Column extends Equatable {
  /// Width configuration of the [MyoroTableV2Column].
  final MyoroTableV2ColumnWidthConfiguration widthConfiguration;

  /// [Widget] of the [MyoroTableV2Column].
  ///
  /// What if you want to just pass some basic text? [MyoroTableV2Column]
  /// only supports passing a [Widget] rather than a [String] for basic
  /// text because of the case where you want a customized [Text]. Thus,
  /// if you really just want to pass simple text following the standard
  /// styling of [MyoroTableV2], create a [Text] and it will automatically
  /// apply [MyoroTableV2ThemeExtension.titleColumnTextStyle].
  final Widget child;

  const MyoroTableV2Column({
    required this.widthConfiguration,
    required this.child,
  });

  MyoroTableV2Column.fake()
    : widthConfiguration = MyoroTableV2ColumnWidthConfiguration.fake(),
      child = Text(
        faker.lorem.word(),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );

  MyoroTableV2Column copyWith({
    MyoroTableV2ColumnWidthConfiguration? widthConfiguration,
    Widget? child,
  }) {
    return MyoroTableV2Column(
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
      'MyoroTableV2Column(\n'
      '  widthConfiguration: $widthConfiguration,\n'
      '  child: $child,\n'
      ');';
}
