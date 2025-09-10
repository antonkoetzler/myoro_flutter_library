import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_background_color_option.dart';
part '_widget/_show_bottom_divider_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroAppBar].
final class MyoroAppBarWidgetShowcaseScreen extends StatelessWidget {
  static const widgetOptions = [_ShowBottomDividerOption(), _BackgroundColorOption()];

  const MyoroAppBarWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroAppBarWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroAppBarTitle,
          widget: _Widget(),
          widgetOptions: widgetOptions,
        ),
      ),
    );
  }
}
