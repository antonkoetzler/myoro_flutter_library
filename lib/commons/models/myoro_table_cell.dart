import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

/// Model to store the configuration options for a cell in a row of a [MyoroTable].
final class MyoroTableCell extends Equatable {
  /// Contents of the cell.
  final Widget child;

  const MyoroTableCell({
    required this.child,
  });

  MyoroTableCell copyWith({
    Widget? child,
  }) {
    return MyoroTableCell(
      child: child ?? this.child,
    );
  }

  MyoroTableCell.fake() : child = Text(faker.randomGenerator.string(50));

  @override
  String toString() => ''
      'MyoroTableCell(\n'
      '  child: $child,\n'
      ');';

  @override
  List<Object?> get props => [child];
}
