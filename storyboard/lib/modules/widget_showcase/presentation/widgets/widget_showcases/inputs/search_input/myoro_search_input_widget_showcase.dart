import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_request_when_changed_option.dart';
part '_widgets/_widget.dart';
part 'view_model/myoro_search_input_widget_showcase_state.dart';
part 'view_model/myoro_search_input_widget_showcase_view_model.dart';

/// Widget showcase of [MyoroSearchInput].
final class MyoroSearchInputWidgetShowcase extends StatefulWidget {
  static const options = [...MyoroInputWidgetShowcase.options, _RequestWhenChangedOption()];

  const MyoroSearchInputWidgetShowcase({super.key});

  @override
  State<MyoroSearchInputWidgetShowcase> createState() => _MyoroSearchInputWidgetShowcaseState();
}

final class _MyoroSearchInputWidgetShowcaseState extends State<MyoroSearchInputWidgetShowcase> {
  final _viewModel = MyoroSearchInputWidgetShowcaseViewModel();

  @override
  Widget build(_) {
    return MultiProvider(
      providers: [
        InheritedProvider(create: (_) => _viewModel),
        InheritedProvider(create: (_) => _viewModel.inputViewModel),
      ],
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroSearchInputTitle,
          widget: _Widget(),
          widgetOptions: MyoroSearchInputWidgetShowcase.options,
        ),
      ),
    );
  }
}
