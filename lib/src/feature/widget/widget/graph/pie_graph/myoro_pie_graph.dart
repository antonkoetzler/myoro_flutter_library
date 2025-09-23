import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_pie_graph.dart';

/// A pie (or donut if specified) chart.
class MyoroPieGraph extends StatelessWidget {
  const MyoroPieGraph({super.key, required this.configuration, this.themeExtension});

  /// Configuration.
  final MyoroPieGraphConfiguration configuration;

  /// Theme extension.
  final MyoroPieGraphThemeExtension? themeExtension;

  @override
  Widget build(context) {
    final themeExtension = this.themeExtension ?? MyoroPieGraphThemeExtension.builder(context.colorScheme);

    return MyoroSingleThemeExtensionWrapper(
      themeExtension: themeExtension,
      child: InheritedProvider(
        create: (_) => MyoroPieGraphViewModel(configuration: configuration),
        child: Stack(
          alignment: Alignment.center,
          children: [const _PieGraph(), if (configuration.centerWidget != null) configuration.centerWidget!],
        ),
      ),
    );
  }
}
