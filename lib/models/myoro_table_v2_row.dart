import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function that builds the [Widget]s (cells) of a [MyoroTableV2Row].
typedef MyoroTableV2RowBuilder<T> =
    List<Widget> Function(BuildContext context, T item);

/// Function that is executed when a [MyoroTableV2Row] is interacted with.
typedef MyoroTableV2RowTapEvent<T> =
    void Function(BuildContext context, T item);

/// A row within a [MyoroTableV2].
final class MyoroTableV2Row<T> extends Equatable {
  /// Function that is executed when a tap is received.
  final MyoroTableV2RowTapEvent<T>? onTapDown;

  /// Function that is executed when a tap is released.
  final MyoroTableV2RowTapEvent<T>? onTapUp;

  /// Function that builds the [Widget]s (cells) of a [MyoroTableV2Row].
  final MyoroTableV2RowBuilder<T> builder;
  qweoiqjweoqwiej

  const MyoroTableV2Row({this.onTapDown, this.onTapUp, required this.builder});

  MyoroTableV2Row<T> copyWith({
    MyoroTableV2RowTapEvent<T>? onTapDown,
    MyoroTableV2RowTapEvent<T>? onTapUp,
    MyoroTableV2RowBuilder<T>? builder,
  }) {
    return MyoroTableV2Row(
      onTapDown: onTapDown ?? this.onTapDown,
      onTapUp: onTapUp ?? this.onTapUp,
      builder: builder ?? this.builder,
    );
  }

  @override
  String toString() =>
      'MyoroTableV2Row<$T>(\n'
      '  onTapDown: $onTapDown,\n'
      '  onTapUp: $onTapUp,\n'
      '  builder: $builder,\n'
      ');';

  @override
  List<Object?> get props {
    return [onTapDown, onTapUp, builder];
  }
}
