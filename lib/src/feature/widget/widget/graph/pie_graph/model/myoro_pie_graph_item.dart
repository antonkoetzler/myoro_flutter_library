import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_pie_graph_item.g.dart';

/// Item/section in a [MyoroPieGraph].
@immutable
@myoroModel
class MyoroPieGraphItem with _$MyoroPieGraphItemMixin {
  const MyoroPieGraphItem({required this.value, this.color, this.radius});

  MyoroPieGraphItem.fake()
    : value = faker.randomGenerator.decimal(),
      color = myoroFake<Color>(),
      radius = faker.randomGenerator.decimal(min: 0);

  /// Value of the item.
  final double value;

  /// Color of the item.
  final Color? color;

  /// Radius aka height of the item.
  final double? radius;
}
