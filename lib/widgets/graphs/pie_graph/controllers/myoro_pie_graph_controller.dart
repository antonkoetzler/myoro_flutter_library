import 'package:fl_chart/src/chart/pie_chart/pie_chart_data.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroPieGraph].
class MyoroPieGraphController implements MyoroPieGraphInterface {
  MyoroPieGraphController({required MyoroPieGraphConfiguration configuration}) {
    state = MyoroPieGraphState(configuration);
  }

  late final MyoroPieGraphState state;

  @override
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
