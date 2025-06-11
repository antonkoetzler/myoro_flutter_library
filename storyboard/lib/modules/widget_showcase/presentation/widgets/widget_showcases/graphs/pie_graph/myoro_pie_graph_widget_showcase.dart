import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_center_widget.dart';
part '_widgets/_center_widget_option.dart';
part '_widgets/_type_enum_option.dart';
part '_widgets/_widget.dart';

/// Widget showcase of [MyoroPieGraph].
final class MyoroPieGraphWidgetShowcase extends StatelessWidget {
  static const options = [_TypeEnumOption(), _CenterWidgetOption()];

  const MyoroPieGraphWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroPieGraphWidgetShowcaseViewModel(),
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
