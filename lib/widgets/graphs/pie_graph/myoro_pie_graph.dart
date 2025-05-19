import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_pie_graph.dart';
part 'models/myoro_pie_graph_configuration.dart';
part 'models/myoro_pie_graph_item.dart';
part 'myoro_pie_graph_theme_extension.dart';

/// A pie (or donut if specified) chart.
class MyoroPieGraph extends StatelessWidget {
  /// Configuration.
  final MyoroPieGraphConfiguration configuration;

  const MyoroPieGraph({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [_PieGraph(configuration), if (configuration.centerWidget != null) configuration.centerWidget!],
    );
  }
}
