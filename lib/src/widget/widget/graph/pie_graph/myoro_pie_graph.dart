import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_pie_graph.dart';

/// A pie (or donut if specified) chart.
class MyoroPieGraph extends MyoroStatelessWidget<MyoroPieGraphViewModel> {
  /// Configuration.
  final MyoroPieGraphConfiguration configuration;

  const MyoroPieGraph({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    final viewModel = injectedViewModel ?? MyoroPieGraphViewModel(configuration: configuration);

    return Stack(
      alignment: Alignment.center,
      children: [_PieGraph(viewModel), if (configuration.centerWidget != null) configuration.centerWidget!],
    );
  }
}
