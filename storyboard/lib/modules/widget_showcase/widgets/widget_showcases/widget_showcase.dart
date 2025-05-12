import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Builder of the options of said [Widget] showcase.
///
/// Why does this need to be a builder? To attach the options to this
/// [WidgetShowcase]'s [Widget] tree so there are no [BlocProvider]
/// errors when launching the [_WidgetOptions]'s [MyoroModal].
typedef WidgetShowcaseWidgetOptionsBuilder = List<Widget> Function();

/// [Widget] for you to use and experiment with an MFL [Widget].
///
/// TODO: Test needs to be rewritten.
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

  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorKey,
      onGenerateRoute: (_) {
        return MaterialPageRoute(
          builder: (_) {
            return _Wrapper(_navigatorKey, _widget, _widgetOptions);
          },
        );
      },
    );
  }
}

final class _Wrapper extends StatelessWidget {
  final GlobalKey<NavigatorState> _navigatorKey;
  final Widget _widget;
  final List<Widget> _widgetOptions;

  const _Wrapper(this._navigatorKey, this._widget, this._widgetOptions);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Padding(
      padding: themeExtension.wrapperPadding,
      child: Container(
        height: double.infinity,
        alignment: themeExtension.wrapperAlignment,
        decoration: themeExtension.wrapperDecoration,
        padding: themeExtension.wrapperPadding,
        child: SizedBox.expand(
          child: Stack(
            alignment: Alignment.center,
            children: [
              _widget,
              if (_widgetOptions.isNotEmpty) ...[
                Positioned(bottom: 0, right: 0, child: _WidgetOptionsButton(_navigatorKey, _widgetOptions)),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

final class _WidgetOptionsButton extends StatelessWidget {
  final GlobalKey<NavigatorState> _navigatorKey;
  final List<Widget> _widgetOptions;

  const _WidgetOptionsButton(this._navigatorKey, this._widgetOptions);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(
          onTapUp: (_) => _onTapUp(context),
          borderBuilder: (_) => MyoroButtonVariantEnum.border(context),
        ),
        iconConfiguration: MyoroIconTextButtonIconConfiguration(icon: themeExtension.widgetOptionsButtonIcon),
      ),
    );
  }

  void _onTapUp(BuildContext context) {
    _WidgetOptions._show(_navigatorKey.currentContext!, _widgetOptions);
  }
}

final class _WidgetOptions extends StatelessWidget {
  final List<Widget> _widgetOptions;

  const _WidgetOptions(this._widgetOptions);

  static Future<void> _show(BuildContext context, List<Widget> widgetOptions) async {
    await MyoroModal.show(
      context,
      configuration: const MyoroModalConfiguration(useRootNavigator: false, padding: EdgeInsets.zero),
      child: _WidgetOptions(widgetOptions),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    const divider = _Divider();

    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 0; i < _widgetOptions.length; i++) ...[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(child: Padding(padding: themeExtension.widgetOptionsItemPadding, child: _widgetOptions[i])),
                if (i == (_widgetOptions.length - 1)) divider,
              ],
            ),
          ],
        ],
      ),
    );
  }
}

final class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return const MyoroBasicDivider(configuration: MyoroBasicDividerConfiguration(direction: Axis.horizontal));
  }
}
