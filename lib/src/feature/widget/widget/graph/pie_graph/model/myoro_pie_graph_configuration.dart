import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_pie_graph_configuration.g.dart';

/// Configuration of [MyoroPieGraph].
@myoroModel
class MyoroPieGraphConfiguration with _$MyoroPieGraphConfigurationMixin {
  const MyoroPieGraphConfiguration({required this.typeEnum, this.centerWidget, required this.items})
    : assert(
        (typeEnum == MyoroPieGraphEnum.pie) ? centerWidget == null : true,
        '[MyoroPieGraph]: If [typeEnum.isPie] is [true], [centerWidget] cannot be provided.',
      );

  factory MyoroPieGraphConfiguration.fake() {
    final typeEnum = MyoroPieGraphEnum.fake();
    return MyoroPieGraphConfiguration(
      typeEnum: typeEnum,
      centerWidget: typeEnum.isPie ? null : const SizedBox.shrink(),
      items: List.generate(faker.randomGenerator.integer(10), (_) => MyoroPieGraphItem.fake()),
    );
  }

  /// Pie/donut enum.
  final MyoroPieGraphEnum typeEnum;

  /// If [typeEnum] is [MyoroPieGraphEnum.donut],
  /// this will place a [Widget] inside of the graph.
  final Widget? centerWidget;

  /// Items of the graph.
  final List<MyoroPieGraphItem> items;
}
