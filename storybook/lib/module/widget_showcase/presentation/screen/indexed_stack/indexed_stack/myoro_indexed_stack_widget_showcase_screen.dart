import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/src/l10n/localization.dart';
import 'package:storybook/storybook.dart';

part '_widget/_button.dart';
part '_widget/_widget.dart';
part '_widget/_image.dart';

/// Widget showcase of [MyoroIndexedStack].
final class MyoroIndexedStackWidgetShowcaseScreen extends StatelessWidget {
  const MyoroIndexedStackWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => ValueNotifier(0),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroIndexedStackTitle,
          widget: _Widget(),
        ),
      ),
    );
  }
}
