import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/src/l10n/localization.dart';
import 'package:storybook/storybook.dart';

part '_widget/_input.dart';
part '_widget/_kitty.dart';
part '_widget/_submit_button.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroForm].
final class MyoroFormWidgetShowcaseScreen extends StatelessWidget {
  const MyoroFormWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroFormWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroFormTitle,
          widget: _Widget(),
        ),
      ),
    );
  }
}
