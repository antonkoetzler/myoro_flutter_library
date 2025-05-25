import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [Widget] that showcases a [Widget] in MFL and provides options to fidget with said [Widget].
class WidgetShowcase extends StatelessWidget {
  const WidgetShowcase({super.key, required this.widget, this.widgetOptions = const []});

  /// [Widget] being showcased.
  final Widget widget;

  /// Options alterable options of the [Widget].
  final List<Widget> widgetOptions;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Container(decoration: themeExtension.decoration, padding: themeExtension.contentPadding, child: widget);
  }
}
