import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration of [MyoroPieGraph].
///
/// TODO: Needs to be tested.
class MyoroPieGraphConfiguration extends Equatable {
  /// Pie/donut enum.
  final MyoroPieGraphEnum typeEnum;

  /// If [typeEnum] is [MyoroPieGraphEnum.donut],
  /// this will place a [Widget] inside of the graph.
  final Widget? centerWidget;

  /// Items of the graph.
  final List<MyoroPieGraphItem> items;

  const MyoroPieGraphConfiguration({required this.typeEnum, this.centerWidget, required this.items})
    : assert(
        (typeEnum == MyoroPieGraphEnum.pie) ? centerWidget == null : true,
        '[MyoroPieGraph]: If [typeEnum.isPie] is [true], [centerWidget] cannot be provided.',
      );

  MyoroPieGraphConfiguration copyWith({
    MyoroPieGraphEnum? typeEnum,
    Widget? centerWidget,
    bool centerWidgetProvided = true,
    List<MyoroPieGraphItem>? items,
  }) {
    return MyoroPieGraphConfiguration(
      typeEnum: typeEnum ?? this.typeEnum,
      centerWidget: centerWidgetProvided ? (centerWidget ?? this.centerWidget) : null,
      items: items ?? this.items,
    );
  }

  @override
  List<Object?> get props {
    return [typeEnum, centerWidget, items];
  }

  @override
  String toString() =>
      'MyoroPieGraphConfiguration(\n'
      '  typeEnum: $typeEnum,\n'
      '  centerWidget: $centerWidget,\n'
      '  items: $items,\n'
      ');';
}
