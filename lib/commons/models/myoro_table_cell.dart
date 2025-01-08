import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model representing a cell within a [MyoroTableRow].
final class MyoroTableCell extends Equatable {
  /// Builder of the [MyoroTableCell]'s [Widget].
  final Widget child;

  const MyoroTableCell({
    required this.child,
  });

  MyoroTableCell.fake() : child = Text(faker.lorem.word());

  MyoroTableCell copyWith({
    Widget? child,
  }) {
    return MyoroTableCell(
      child: child ?? this.child,
    );
  }

  @override
  String toString() => ''
      'MyoroTableCell(\n'
      '  child: $child,\n'
      ');';

  @override
  List<Object?> get props => [child];
}
