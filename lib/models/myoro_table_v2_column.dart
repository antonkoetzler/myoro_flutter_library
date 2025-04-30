import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Column (a.k.a title) of a [MyoroTableV2].
///
/// TODO: Needs to be tested.
class MyoroTableV2Column extends Equatable {
  /// (Initial) width configuration of the [MyoroTableV2Column].
  final MyoroTableV2ColumnWidthConfiguration widthConfiguration;

  /// [Widget] of the [MyoroTableV2Column].
  ///
  /// [MyoroTableV2] provides a [DefaultTextStyle] wrapping [child].
  final Widget child;

  const MyoroTableV2Column({
    this.widthConfiguration = const MyoroTableV2ColumnWidthConfiguration(
      typeEnum: MyoroTableV2ColumnWidthConfigurationEnum.intrinsic,
    ),
    required this.child,
  });

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
      '  widthConfiguration: $widthConfiguration\n'
      '  child: $child,\n'
      ');';
}
