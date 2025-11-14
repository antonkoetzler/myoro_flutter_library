import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/src/l10n/localization.dart';
import 'package:storybook/storybook.dart';

part '_widget/_widget.dart';

/// Widget showcase screen of [MyoroField].
final class MyoroFieldWidgetShowcaseScreen extends StatelessWidget {
  const MyoroFieldWidgetShowcaseScreen({super.key});

  @override
  Widget build(context) {
    return const WidgetShowcaseScreen(
      configuration: WidgetShowcaseScreenConfiguration(
        widgetName: MyoroWidgetListEnum.myoroFieldTitle,
        widget: _Widget(),
      ),
    );
  }
}
