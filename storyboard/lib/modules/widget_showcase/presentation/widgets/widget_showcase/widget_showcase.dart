import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_widget_options_modal.dart';

/// [Widget] that showcases a [Widget] in MFL and provides options to fidget with said [Widget].
final class WidgetShowcase extends StatefulWidget {
  const WidgetShowcase({super.key, required this.widget, this.widgetOptions = const []});

  /// [Widget] being showcased.
  final Widget widget;

  /// Options alterable options of the [Widget].
  final List<Widget> widgetOptions;

  @override
  State<WidgetShowcase> createState() => _WidgetShowcaseState();
}

final class _WidgetShowcaseState extends State<WidgetShowcase> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Navigator(
      key: _navigatorKey,
      onGenerateRoute: (_) {
        return MaterialPageRoute(
          builder: (_) {
            return Padding(
              padding: themeExtension.padding,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: themeExtension.decoration,
                padding: themeExtension.contentPadding,
                child: Stack(
                  children: [
                    Center(child: widget.widget),
                    if (widget.widgetOptions.isNotEmpty) ...[
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: MyoroIconTextButton(
                          configuration: MyoroIconTextButtonConfiguration(
                            buttonConfiguration: MyoroButtonConfiguration(
                              borderBuilder: (_) => MyoroButtonStyleEnum.border(context),
                              onTapUp:
                                  (_) => _WidgetOptionsModal._show(_navigatorKey.currentContext!, widget.widgetOptions),
                            ),
                            iconConfiguration: MyoroIconTextButtonIconConfiguration(
                              icon: themeExtension.widgetOptionsButtonIcon,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
