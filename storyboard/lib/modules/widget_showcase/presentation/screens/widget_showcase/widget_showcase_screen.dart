import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_widget_options_button.dart';
part '_widgets/_widget_options_modal.dart';
part '_widgets/_widget_showcase.dart';

/// Screen to display a MFL [Widget] and it's options.
final class WidgetShowcaseScreen extends StatefulWidget {
  static const widgetOptionsDefaultValue = <Widget>[];

  /// Name of the [Widget].
  final String widgetName;

  /// [WidgetShowcase.widget]
  final Widget widget;

  /// [WidgetShowcase.widgetOptions]
  final List<Widget> widgetOptions;

  const WidgetShowcaseScreen({
    super.key,
    required this.widgetName,
    required this.widget,
    this.widgetOptions = widgetOptionsDefaultValue,
  });

  @override
  State<WidgetShowcaseScreen> createState() => _WidgetShowcaseScreenState();
}

final class _WidgetShowcaseScreenState extends State<WidgetShowcaseScreen> {
  late final _viewModel = WidgetShowcaseScreenViewModel(widget.widgetName, widget.widget, widget.widgetOptions);

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
                onPrevious: context.navigator.pop,
                title: _viewModel.widgetName,
                actionIcons: [if (_viewModel.widgetOptions.isNotEmpty) _WidgetOptionsButton()],
                body: _WidgetShowcase(),
              );
            },
          );
        },
      ),
    );
  }
}
