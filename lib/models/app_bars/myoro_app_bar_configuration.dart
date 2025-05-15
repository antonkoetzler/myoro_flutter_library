import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration of [MyoroAppBar].
class MyoroAppBarConfiguration extends Equatable {
  static const borderedDefaultValue = false;

  /// If the app bar contains a border at the bottom.
  final bool bordered;

  /// Background color of the [MyoroAppBar].
  final Color? backgroundColor;

  /// Content of the app bar.
  final Widget child;

  const MyoroAppBarConfiguration({
    this.bordered = borderedDefaultValue,
    this.backgroundColor,
    required this.child,
  });

  MyoroAppBarConfiguration.fake()
    : bordered = faker.randomGenerator.boolean(),
      backgroundColor =
          faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      child = const SizedBox.shrink();

  MyoroAppBarConfiguration copyWith({
    bool? bordered,
    Color? backgroundColor,
    bool backgroundColorProvided = true,
    Widget? child,
  }) {
    return MyoroAppBarConfiguration(
      bordered: bordered ?? this.bordered,
      backgroundColor:
          backgroundColorProvided
              ? (backgroundColor ?? this.backgroundColor)
              : null,
      child: child ?? this.child,
    );
  }

  @override
  List<Object?> get props {
    return [bordered, backgroundColor, child];
  }

  @override
  String toString() =>
      'MyoroAppBarConfiguration(\n'
      '  bordered: $bordered,\n'
      '  backgroundColor: $backgroundColor,\n'
      '  child: $child,\n'
      ');';
}
