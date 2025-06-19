import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_duration_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroSnackBarContainer].
final class MyoroSnackBarContainerWidgetShowcase extends StatelessWidget {
  static const options = [_DurationOption()];

  const MyoroSnackBarContainerWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroSnackBarContainerWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroSnackBarContainerTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
