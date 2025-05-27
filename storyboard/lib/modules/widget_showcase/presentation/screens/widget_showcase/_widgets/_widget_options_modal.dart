part of '../widget_showcase_screen.dart';

/// Modal of [WidgetShowcase.widgetOptions].
final class _WidgetOptionsModal extends StatelessWidget {
  static Future<void> _show(BuildContext context, String widgetName, List<Widget> widgetOptions) async {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseScreenThemeExtension>();

    await MyoroModal.show(
      context,
      configuration: MyoroModalConfiguration(
        title: 'Options of $widgetName',
        useRootNavigator: false,
        padding: themeExtension.widgetOptionsModalPadding,
        closeButtonPadding: EdgeInsets.only(right: themeExtension.widgetOptionsModalItemPadding.left / 2),
        constraints: BoxConstraints(
          maxWidth: MyoroPlatformHelper.isMobile ? MediaQuery.of(context).size.width * 0.9 : 400,
        ),
      ),
      child: _WidgetOptionsModal(widgetOptions),
    );
  }

  const _WidgetOptionsModal(this._widgetOptions);

  final List<Widget> _widgetOptions;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseScreenThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.widgetOptionsModalSpacing,
      children: [
        for (int i = 0; i < _widgetOptions.length; i++) ...[
          Padding(padding: themeExtension.widgetOptionsModalItemPadding, child: _widgetOptions[i]),
          if (i != (_widgetOptions.length - 1)) ...[
            const MyoroBasicDivider(
              configuration: MyoroBasicDividerConfiguration(direction: Axis.horizontal, padding: EdgeInsets.zero),
            ),
          ],
        ],
      ],
    );
  }
}
