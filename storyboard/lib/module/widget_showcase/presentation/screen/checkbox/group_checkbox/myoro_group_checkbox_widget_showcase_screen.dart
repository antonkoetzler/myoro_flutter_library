import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_direction_option.dart';
part '_widget/_run_spacing_option.dart';
part '_widget/_spacing_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroGroupCheckbox].
final class MyoroGroupCheckboxWidgetShowcaseScreen extends StatefulWidget {
  // Configuration-related options (behavior, data, structural properties)
  static const configurationOptions = [_DirectionOption()];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = [_SpacingOption(), _RunSpacingOption()];

  const MyoroGroupCheckboxWidgetShowcaseScreen({super.key});

  @override
  State<MyoroGroupCheckboxWidgetShowcaseScreen> createState() => _MyoroGroupCheckboxWidgetShowcaseScreenState();
}

class _MyoroGroupCheckboxWidgetShowcaseScreenState extends State<MyoroGroupCheckboxWidgetShowcaseScreen> {
  late final _viewModel = MyoroGroupCheckboxWidgetShowcaseScreenViewModel(context);

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    return InheritedProvider.value(
      value: _viewModel,
      child: ListenableBuilder(
        listenable: _viewModel.state,
        builder: (_, _) {
          return const WidgetShowcaseScreen(
            configuration: WidgetShowcaseScreenConfiguration(
              widgetName: MyoroWidgetListEnum.myoroGroupCheckboxTitle,
              widget: _Widget(),
              configurationOptions: MyoroGroupCheckboxWidgetShowcaseScreen.configurationOptions,
              stylingOptions: MyoroGroupCheckboxWidgetShowcaseScreen.stylingOptions,
            ),
          );
        },
      ),
    );
  }
}
