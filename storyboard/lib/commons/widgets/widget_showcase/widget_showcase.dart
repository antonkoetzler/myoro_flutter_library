import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

const _widgetOptionsMinWidth = 200.0;
const _widgetOptionsMaxWidth = 350.0;

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
  late final _widgetOptionsWidthNotifier = ValueNotifier<double>(200);

  void _updateWidthOptionsWidthNotifier(DragUpdateDetails details) {
    if (!mounted) return;
    final newWidth = _widgetOptionsWidthNotifier.value - details.delta.dx;
    if (newWidth <= _widgetOptionsMinWidth || newWidth >= _widgetOptionsMaxWidth) return;
    _widgetOptionsWidthNotifier.value = newWidth;
  }

  @override
  void dispose() {
    _widgetOptionsWidthNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _WidgetWrapper(
            _widget,
            _showWidgetOptions,
            onPressToggleWidgetOptionsButton: () => setState(() => _showWidgetOptions = !_showWidgetOptions),
          ),
        ),
        if (_showWidgetOptions) ...[
          MyoroResizeDivider(
            Axis.vertical,
            dragCallback: _updateWidthOptionsWidthNotifier,
          ),
          _WidgetOptions(
            _widgetOptions,
            _widgetOptionsWidthNotifier,
          ),
        ],
      ],
    );
  }
}

final class _WidgetWrapper extends StatelessWidget {
  final Widget widget;
  final bool showWidgetOptions;
  final VoidCallback onPressToggleWidgetOptionsButton;

  const _WidgetWrapper(
    this.widget,
    this.showWidgetOptions, {
    required this.onPressToggleWidgetOptionsButton,
  });

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Padding(
      padding: themeExtension.widgetWrapperPadding,
      child: Container(
        decoration: BoxDecoration(
          color: themeExtension.widgetWrapperBackgroundColor,
          borderRadius: themeExtension.widgetWrapperBorderRadius,
          border: themeExtension.widgetWrapperBorder,
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: themeExtension.widgetWrapperContentPadding,
              child: widget,
            ),
            _ToggleWidgetOptionsButton(
              showWidgetOptions,
              onPressed: onPressToggleWidgetOptionsButton,
            ),
          ],
        ),
      ),
    );
  }
}

final class _WidgetOptions extends StatelessWidget {
  final Widget widgetOptions;
  final ValueNotifier<double> widgetOptionsWidthNotifier;

  const _WidgetOptions(
    this.widgetOptions,
    this.widgetOptionsWidthNotifier,
  );

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: widgetOptionsWidthNotifier,
      builder: (_, double widthOptionsWidth, __) {
        return Container(
          width: widthOptionsWidth,
          padding: themeExtension.widgetOptionsContentPadding,
          alignment: themeExtension.widgetOptionsContentAlignment,
          constraints: const BoxConstraints(
            minWidth: _widgetOptionsMinWidth,
            maxWidth: _widgetOptionsMaxWidth,
          ),
          child: widgetOptions,
        );
      },
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
