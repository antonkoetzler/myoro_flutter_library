part of '../widget_showcase.dart';

/// Modal of [WidgetShowcase.widgetOptions].
final class _WidgetOptionsModal extends StatelessWidget {
  static Future<void> _show(BuildContext context, List<Widget> widgetOptions) async {
    await MyoroModal.show(
      context,
      configuration: MyoroModalConfiguration(
        useRootNavigator: false,
        constraints: BoxConstraints(
          maxWidth: MyoroPlatformHelper.isMobile ? MediaQuery.of(context).size.width * 0.9 : 400,
        ),
        padding: EdgeInsets.zero,
      ),
      child: _WidgetOptionsModal(widgetOptions),
    );
  }

  const _WidgetOptionsModal(this._widgetOptions);

  final List<Widget> _widgetOptions;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < _widgetOptions.length; i++) ...[
          Padding(padding: themeExtension.widgetOptionPadding, child: _widgetOptions[i]),
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
