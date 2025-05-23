import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_pie_graph.dart';

/// A pie (or donut if specified) chart.
class MyoroPieGraph extends StatelessWidget {
  /// Configuration.
  final MyoroPieGraphConfiguration configuration;

  const MyoroPieGraph({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    final controller = MyoroPieGraphController(configuration: configuration);

    return Stack(
      alignment: Alignment.center,
      children: [_PieGraph(controller), if (configuration.centerWidget != null) configuration.centerWidget!],
    );
  }
}
