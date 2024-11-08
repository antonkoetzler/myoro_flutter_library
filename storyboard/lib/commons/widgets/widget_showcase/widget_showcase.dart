import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget that contains a widget on the left, then controls on the right to
/// experiment with the different options of the widget. Used in [StoryboardBody].
final class WidgetShowcase extends StatefulWidget {
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
  State<WidgetShowcase> createState() => _WidgetShowcaseState();
}

class _WidgetShowcaseState extends State<WidgetShowcase> {
  Widget get _widget => widget.widget;
  Widget get _widgetOptions => widget.widgetOptions;

  bool _showWidgetOptions = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              _widget,
              _ToggleWidgetOptionsButton(
                _showWidgetOptions,
                onPressed: () => setState(() => _showWidgetOptions = !_showWidgetOptions),
              ),
            ],
          ),
        ),
        if (_showWidgetOptions) ...[
          const MyoroBasicDivider(Axis.vertical),
          _widgetOptions,
        ],
      ],
    );
  }
}

final class _ToggleWidgetOptionsButton extends StatelessWidget {
  final bool showWidgetOptions;
  final VoidCallback onPressed;

  const _ToggleWidgetOptionsButton(
    this.showWidgetOptions, {
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final offset = themeExtension.toggleWidgetOptionsButtonOffset;

    return Positioned(
      bottom: offset,
      right: offset,
      child: MyoroIconTextHoverButton(
        icon: themeExtension.toggleWidgetOptionsButtonIcon,
        isHovered: showWidgetOptions,
        onPressed: onPressed,
      ),
    );
  }
}
