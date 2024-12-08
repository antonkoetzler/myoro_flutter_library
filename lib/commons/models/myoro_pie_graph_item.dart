import 'dart:ui';

import 'package:equatable/equatable.dart';

/// Item/section in a [MyoroPieGraph].
final class MyoroPieGraphItem extends Equatable {
  /// Value of the item.
  final double value;

  /// Color of the item.
  final Color? color;

  /// Radius aka height of the item.
  final double? radius;

  const MyoroPieGraphItem({
    required this.value,
    this.color,
    this.radius,
  });

  MyoroPieGraphItem copyWith({
    double? value,
    Color? color,
    double? radius,
  }) {
    return MyoroPieGraphItem(
      value: value ?? this.value,
      color: color ?? this.color,
      radius: radius ?? this.radius,
    );
  }

  @override
  String toString() => ''
      'MyoroPieGraphItem(\n'
      '  value: $value,\n'
      '  color: $color,\n'
      '  radius: $radius,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      value,
      color,
      radius,
    ];
  }
}
