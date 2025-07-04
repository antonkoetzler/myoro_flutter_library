import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_center_widget.dart';
part '_widget/_center_widget_option.dart';
part '_widget/_type_enum_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroPieGraph].
final class MyoroPieGraphWidgetShowcaseScreen extends StatelessWidget {
  static const options = [_TypeEnumOption(), _CenterWidgetOption()];

  const MyoroPieGraphWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroPieGraphWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroPieGraphTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
