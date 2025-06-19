import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_cancel_button_text_option.dart';
part '_widget/_child_option.dart';
part '_widget/_child_widget.dart';
part '_widget/_confirm_button_text_option.dart';
part '_widget/_invert_buttons_option.dart';
part '_widget/_on_cancel_option.dart';
part '_widget/_on_confirm_option.dart';
part '_widget/_text_option.dart';
part '_widget/_text_style_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroDialogModal].
final class MyoroDialogModalWidgetShowcase extends StatefulWidget {
  static const options = [
    _InvertButtonsOption(),
    _ConfirmButtonTextOption(),
    _CancelButtonTextOption(),
    _OnConfirmOption(),
    _OnCancelOption(),
    _TextOption(),
    _TextStyleOption(),
    _ChildOption(),
  ];

  const MyoroDialogModalWidgetShowcase({super.key});

  @override
  State<MyoroDialogModalWidgetShowcase> createState() => _MyoroDialogModalWidgetShowcaseState();
}

final class _MyoroDialogModalWidgetShowcaseState extends State<MyoroDialogModalWidgetShowcase> {
  final _viewModel = MyoroDialogModalWidgetShowcaseViewModel();

  @override
  Widget build(_) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: _viewModel),
        InheritedProvider.value(value: _viewModel.state.modalViewModel),
      ],
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroDialogModalTitle,
          widget: _Widget(),
          widgetOptions: [...MyoroDialogModalWidgetShowcase.options, ...MyoroModalWidgetShowcase.options],
        ),
      ),
    );
  }
}
