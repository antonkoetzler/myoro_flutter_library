import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_cover.dart';
part '_widget/_divider.dart';
part '_widget/_kitty.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroResizeDivider].
final class MyoroResizeDividerWidgetShowcaseScreen extends StatefulWidget {
  const MyoroResizeDividerWidgetShowcaseScreen({super.key});

  @override
  State<MyoroResizeDividerWidgetShowcaseScreen> createState() => _MyoroResizeDividerWidgetShowcaseScreenState();
}

final class _MyoroResizeDividerWidgetShowcaseScreenState extends State<MyoroResizeDividerWidgetShowcaseScreen> {
  final _viewModel = MyoroResizeDividerWidgetShowcaseScreenViewModel();

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: _viewModel.state.basicDividerViewModel),
        InheritedProvider.value(value: _viewModel),
      ],
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroResizeDividerTitle,
          widget: _Widget(),
          widgetOptions: MyoroBasicDividerWidgetShowcaseScreen.options,
        ),
      ),
    );
  }
}
