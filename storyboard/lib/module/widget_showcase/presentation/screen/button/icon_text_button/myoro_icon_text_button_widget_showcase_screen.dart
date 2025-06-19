import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_content_color_builder_option.dart';
part '_widget/_icon_option.dart';
part '_widget/_invert_option.dart';
part '_widget/_padding_option.dart';
part '_widget/_spacing_option.dart';
part '_widget/_text_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroIconTextButton].
final class MyoroIconTextButtonWidgetShowcaseScreen extends StatefulWidget {
  static const options = [
    _InvertOption(),
    _SpacingOption(),
    _PaddingOption(),
    _ContentColorBuilderOption(),
    _IconOption(),
    _TextOption(),
  ];

  const MyoroIconTextButtonWidgetShowcaseScreen({super.key});

  @override
  State<MyoroIconTextButtonWidgetShowcaseScreen> createState() => _MyoroIconTextButtonWidgetShowcaseScreenState();
}

final class _MyoroIconTextButtonWidgetShowcaseScreenState extends State<MyoroIconTextButtonWidgetShowcaseScreen> {
  final _viewModel = MyoroIconTextButtonWidgetShowcaseScreenViewModel();

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: _viewModel),
        InheritedProvider.value(value: _viewModel.state.buttonViewModel),
      ],
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroIconTextButtonTitle,
          widget: _Widget(),
          widgetOptions: [
            ...MyoroButtonWidgetShowcaseScreen.options,
            ...MyoroIconTextButtonWidgetShowcaseScreen.options,
          ],
        ),
      ),
    );
  }
}
