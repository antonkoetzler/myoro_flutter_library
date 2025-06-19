import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_widget_options_button.dart';
part '_widget/_widget_options_modal.dart';
part '_widget/_widget_showcase.dart';

/// Screen to display a MFL [Widget] and it's options.
final class WidgetShowcaseScreen extends StatefulWidget {
  const WidgetShowcaseScreen({super.key, required this.configuration});

  /// Configuration.
  final WidgetShowcaseScreenConfiguration configuration;

  @override
  State<WidgetShowcaseScreen> createState() => _WidgetShowcaseScreenState();
}

final class _WidgetShowcaseScreenState extends State<WidgetShowcaseScreen> {
  late final _viewModel = WidgetShowcaseScreenViewModel(widget.configuration);

  @override
  Widget build(BuildContext context) {
    return InheritedProvider.value(
      value: _viewModel,
      child: Navigator(
        key: _viewModel.navigatorKey,
        onGenerateRoute: (_) {
          return MaterialPageRoute(
            builder: (_) {
              return StoryboardScreen(
                configuration: StoryboardScreenConfiguration(
                  onPrevious: context.navigator.pop,
                  title: _viewModel.configuration.widgetName,
                  extraActionWidgets: [
                    if (_viewModel.configuration.widgetOptions.isNotEmpty) const _WidgetOptionsButton(),
                  ],
                  body: const _WidgetShowcase(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
