import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_pair.dart';
part '_widget/_pair_text.dart';
part '_widget/_title.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroLayoutBuilder].
final class MyoroLayoutBuilderWidgetShowcaseScreen extends StatelessWidget {
  const MyoroLayoutBuilderWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return const WidgetShowcaseScreen(
      configuration: WidgetShowcaseScreenConfiguration(
        widgetName: MyoroWidgetListEnum.myoroLayoutBuilderTitle,
        widget: _Widget(),
      ),
    );
  }
}
