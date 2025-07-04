import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_child.dart';
part '_widget/_child_option.dart';
part '_widget/_message_option.dart';
part '_widget/_show_close_button_option.dart';
part '_widget/_snack_bar_type_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroSnackBar].
final class MyoroSnackBarWidgetShowcaseScreen extends StatelessWidget {
  static const options = [_SnackBarTypeOption(), _ShowCloseButtonOption(), _MessageOption(), _ChildOption()];

  const MyoroSnackBarWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroSnackBarWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroSnackBarTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
