import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget that contains a widget on the left, then controls on the right to
/// experiment with the different options of the _ Used in [StoryboardBody].
final class WidgetShowcase extends StatefulWidget {
  /// Widget that will be on the left.
  final Widget widget;

  /// Options to experiment on the widget that will be on the right.
  final List<Widget> widgetOptions;

  const WidgetShowcase({super.key, required this.widget, this.widgetOptions = const []});

  @override
  State<WidgetShowcase> createState() => _WidgetShowcaseState();
}

final class _WidgetShowcaseState extends State<WidgetShowcase> {
  Widget get _widget => widget.widget;
  List<Widget> get _widgetOptions => widget.widgetOptions;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: _WidgetWrapper(_widget)),
        if (_widgetOptions.isNotEmpty) ...[
          const _Divider(direction: Axis.vertical),
          _WidgetOptions(_widgetOptions),
        ],
      ],
    );
  }
}

final class _WidgetWrapper extends StatelessWidget {
  final Widget widget;

  const _WidgetWrapper(this.widget);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Padding(
      padding: themeExtension.widgetWrapperPadding,
      child: Container(
        height: double.infinity,
        alignment: themeExtension.widgetWrapperAlignment,
        decoration: themeExtension.widgetWrapperDecoration,
        child: Padding(padding: themeExtension.widgetWrapperContentPadding, child: widget),
      ),
    );
  }
}

final class _Divider extends StatelessWidget {
  final Axis direction;
  final EdgeInsets? padding;

  const _Divider({required this.direction, this.padding});

  @override
  Widget build(BuildContext context) {
    return MyoroBasicDivider(
      configuration: MyoroBasicDividerConfiguration(direction: direction, padding: padding),
    );
  }
}

final class _WidgetOptions extends StatelessWidget {
  final List<Widget> _widgetOptions;

  const _WidgetOptions(this._widgetOptions);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: themeExtension.widgetOptionsMaxWidth),
      child: SingleChildScrollView(
        child: Padding(
          padding: themeExtension.widgetOptionsPadding,
          child: Column(
            children:
                _widgetOptions.map<Widget>((Widget widgetOption) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(child: widgetOption),
                      if (_widgetOptions.indexOf(widgetOption) != _widgetOptions.length - 1)
                        _Divider(
                          direction: Axis.horizontal,
                          padding: themeExtension.widgetOptionsDividerPadding,
                        ),
                    ],
                  );
                }).toList(),
          ),
        ),
      ),
    );
  }
}
