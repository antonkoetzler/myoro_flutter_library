import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_pie_graph.dart';

/// A pie (or donut if specified) chart.
class MyoroPieGraph extends MyoroStatelessWidget {
  const MyoroPieGraph({super.key, required this.configuration});

  /// Configuration.
  final MyoroPieGraphConfiguration configuration;

  @override
  Widget build(context) {
    return InheritedProvider(
      create: (_) => MyoroPieGraphViewModel(configuration: configuration),
      child: Stack(
        alignment: Alignment.center,
        children: [const _PieGraph(), if (configuration.centerWidget != null) configuration.centerWidget!],
      ),
    );
  }
}
