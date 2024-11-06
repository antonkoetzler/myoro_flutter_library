import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget that contains a widget on the left, then controls on the right to
/// experiment with the different options of the widget. Used in [StoryboardBody].
final class WidgetShowcase extends StatelessWidget {
  /// Widget that will be on the left.
  final Widget widget;

  /// Options to experiment on the widget that will be on the right.
  final Widget widgetOptions;

  const WidgetShowcase({
    super.key,
    required this.widget,
    required this.widgetOptions,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: widget),
        const MyoroBasicDivider(Axis.vertical),
        widgetOptions,
      ],
    );
  }
}
