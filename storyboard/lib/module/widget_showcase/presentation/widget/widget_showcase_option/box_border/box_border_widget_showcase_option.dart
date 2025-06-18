import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_color_option.dart';
part '_widget/_stroke_align_option.dart';
part '_widget/_style_option.dart';
part '_widget/_title.dart';
part '_widget/_width_option.dart';

/// Widget showcase option to create a basic [BoxBorder.all].
final class BoxBorderWidgetShowcaseOption extends StatelessWidget {
  const BoxBorderWidgetShowcaseOption({super.key});

  @override
  Widget build(BuildContext context) {
    final widgetShowcaseOptionThemeExtension = context.resolveThemeExtension<WidgetShowcaseOptionThemeExtension>();

    BoxBorder.all();

    return InheritedProvider(
      create: (_) => BoxBorderWidgetShowcaseOptionViewModel(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: widgetShowcaseOptionThemeExtension.spacing,
        children: [_Title(), _ColorOption(), _WidthOption(), _StyleOption(), _StrokeAlignOption()],
      ),
    );
  }
}
