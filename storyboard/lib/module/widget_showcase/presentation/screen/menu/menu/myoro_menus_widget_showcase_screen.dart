import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_background_color_option.dart';
part '_widget/_border_option.dart';
part '_widget/_border_radius_option.dart';
part '_widget/_constraints_option.dart';
part '_widget/_multi_menu.dart';
part '_widget/_on_end_reached_request_option.dart';
part '_widget/_search_callback_option.dart';
part '_widget/_singular_menu.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroSingularMenu] & [MyoroMultiMenu].
final class MyoroMenusWidgetShowcaseScreen extends StatelessWidget {
  static const options = [
    _ConstraintsOption(),
    _BackgroundColorOption(),
    _BorderOption(),
    _BorderRadiusOption(),
    _OnEndReachedRequestOption(),
    _SearchCallbackOption(),
  ];

  const MyoroMenusWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroMenusWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroMenusTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
