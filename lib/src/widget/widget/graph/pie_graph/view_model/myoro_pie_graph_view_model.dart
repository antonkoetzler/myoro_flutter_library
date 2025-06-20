import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroPieGraph].
class MyoroPieGraphViewModel {
  MyoroPieGraphViewModel({required MyoroPieGraphConfiguration configuration}) {
    state = MyoroPieGraphViewModelState(configuration);
  }

  late final MyoroPieGraphViewModelState state;

  /// Creates the sections of the [MyoroPieGraph].
  List<PieChartSectionData> createSections(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroPieGraphThemeExtension>();
    return state.configuration.items.map<PieChartSectionData>((MyoroPieGraphItem item) {
      return PieChartSectionData(
        showTitle: false,
        value: item.value,
        color: item.color ?? themeExtension.itemColor,
        radius: item.radius ?? themeExtension.itemRadius,
      );
    }).toList();
  }
}
