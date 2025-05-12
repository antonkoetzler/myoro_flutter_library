import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Screen to display a [WidgetShowcase] of a MFL widget.
final class WidgetShowcaseScreen extends StatelessWidget {
  /// [String] of a MFL widget contained in [WidgetListingEnum].
  final String _widgetName;

  const WidgetShowcaseScreen(this._widgetName, {super.key});

  @override
  Widget build(BuildContext context) {
    return StoryboardScreen(
      onPrevious: context.navigator.pop,
      title: _widgetName,
      body: StoryboardWidgetListingEnum.getWidgetShowcase(_widgetName),
    );
  }
}
