import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_direction_option.dart';
part '_widget/_on_changed_option.dart';
part '_widget/_run_spacing_option.dart';
part '_widget/_spacing_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroGroupRadio].
final class MyoroGroupRadioWidgetShowcaseScreen extends StatefulWidget {
  static const options = [_DirectionOption(), _SpacingOption(), _RunSpacingOption(), _OnChangedOption()];

  const MyoroGroupRadioWidgetShowcaseScreen({super.key});

  @override
  State<MyoroGroupRadioWidgetShowcaseScreen> createState() => _MyoroGroupRadioWidgetShowcaseScreenState();
}

final class _MyoroGroupRadioWidgetShowcaseScreenState extends State<MyoroGroupRadioWidgetShowcaseScreen> {
  final _viewModel = MyoroGroupRadioWidgetShowcaseScreenViewModel();

  @override
  Widget build(_) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: _viewModel),
        InheritedProvider.value(value: _viewModel.state.radioViewModel),
      ],
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroGroupRadioTitle,
          widget: _Widget(),
          widgetOptions: [...MyoroGroupRadioWidgetShowcaseScreen.options, ...MyoroRadioWidgetShowcaseScreen.options],
        ),
      ),
    );
  }
}
