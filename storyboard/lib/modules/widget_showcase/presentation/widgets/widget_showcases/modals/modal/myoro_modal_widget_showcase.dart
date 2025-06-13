import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_barrier_dismissable_option.dart';
part '_widgets/_close_button_padding_option.dart';
part '_widgets/_constraints_option.dart';
part '_widgets/_on_closed_option.dart';
part '_widgets/_padding_option.dart';
part '_widgets/_show_close_button_option.dart';
part '_widgets/_title_option.dart';
part '_widgets/_use_root_navigator_option.dart';
part '_widgets/_widget.dart';

/// Widget showcase of [MyoroModal].
final class MyoroModalWidgetShowcase extends StatelessWidget {
  static const options = [
    _BarrierDismissableOption(),
    _UseRootNavigatorOption(),
    _ConstraintsOption(),
    _OnClosedOption(),
    _TitleOption(),
    _ShowCloseButtonOption(),
    _PaddingOption(),
    _CloseButtonPaddingOption(),
  ];

  const MyoroModalWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroModalWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroModalTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
