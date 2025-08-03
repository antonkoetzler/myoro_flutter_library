part of '../widget_showcase_screen.dart';

/// Modal of [WidgetShowcase.widgetOptions].
final class _WidgetOptionsModal extends StatelessWidget {
  static Future<void> _show(
    BuildContext context,
    BuildContext navigatorContext,
    String widgetName,
    List<Widget> widgetOptions,
  ) async {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseScreenThemeExtension>();

    final screenSize = MediaQuery.of(navigatorContext).size;

    await MyoroModal.showModal(
      navigatorContext,
      configuration: MyoroModalConfiguration(
        title: 'Options of $widgetName',
        useRootNavigator: false,
        padding: EdgeInsets.zero,
        closeButtonPadding: themeExtension.widgetOptionsModalCloseButtonPadding,
        constraints: BoxConstraints(
          maxWidth: MyoroPlatformHelper.isMobile ? screenSize.width * 0.9 : 400,
          maxHeight: screenSize.height * 0.6,
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

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: themeExtension.widgetOptionsModalSpacing,
        children: [
          for (int i = 0; i < _widgetOptions.length; i++) ...[
            Padding(padding: themeExtension.widgetOptionsModalItemPadding, child: _widgetOptions[i]),
            if (i != (_widgetOptions.length - 1)) ...[
              const MyoroBasicDivider(
                configuration: MyoroBasicDividerConfiguration(direction: Axis.horizontal, padding: EdgeInsets.zero),
              ),
            ] else ...[
              SizedBox(height: themeExtension.widgetOptionsModalSpacing / 3),
            ],
          ],
        ],
      ),
    );
  }
}
