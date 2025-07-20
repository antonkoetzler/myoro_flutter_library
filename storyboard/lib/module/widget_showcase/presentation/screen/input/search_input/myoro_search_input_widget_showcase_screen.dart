import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_request_when_changed_option.dart';
part '_widget/_suffix.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroSearchInput].
final class MyoroSearchInputWidgetShowcaseScreen extends StatefulWidget {
  static const options = [_RequestWhenChangedOption()];

  const MyoroSearchInputWidgetShowcaseScreen({super.key});

  @override
  State<MyoroSearchInputWidgetShowcaseScreen> createState() => _MyoroSearchInputWidgetShowcaseScreenState();
}

final class _MyoroSearchInputWidgetShowcaseScreenState extends State<MyoroSearchInputWidgetShowcaseScreen> {
  final _viewModel = MyoroSearchInputWidgetShowcaseScreenViewModel();

  @override
  Widget build(_) {
    return MultiProvider(
      providers: [
        InheritedProvider(create: (_) => _viewModel),
        InheritedProvider(create: (_) => _viewModel.inputViewModel),
      ],
      child: WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroSearchInputTitle,
          widget: const _Widget(),
          widgetOptions: [
            ...MyoroSearchInputWidgetShowcaseScreen.options,
            ...MyoroInputWidgetShowcaseScreen.options.values,
          ],
        ),
      ),
    );
  }
}
