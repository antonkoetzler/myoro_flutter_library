import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Screen to display a [WidgetShowcase] of a MFL widget.
final class WidgetShowcaseScreen extends StatelessWidget {
  /// [String] of a MFL widget contained in [WidgetListingEnum].
  final String widgetName;

  const WidgetShowcaseScreen({super.key, required this.widgetName});

  @override
  Widget build(BuildContext context) {
    return MyoroScreen(
      appBar: _AppBar(),
    );
  }
}
