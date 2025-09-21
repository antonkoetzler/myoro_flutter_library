part of '../widget_showcase_screen.dart';

/// Modal of [WidgetShowcaseScreen] options.
final class _WidgetOptionsModal extends StatelessWidget {
  static Future<void> _show(
    BuildContext context,
    BuildContext navigatorContext,
    String widgetName,
    List<Widget> configurationOptions,
    List<Widget> stylingOptions,
  ) async {
    final modalThemeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();
    final widgetShowcaseScreenThemeExtension = context.resolveThemeExtension<WidgetShowcaseScreenThemeExtension>();

    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    await MyoroModal.showModal(
      navigatorContext,
      configuration: MyoroModalConfiguration(title: 'Options of $widgetName', useRootNavigator: false),
      themeExtension: modalThemeExtension.copyWith(
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(maxHeight: screenHeight * 0.9, maxWidth: screenWidth * 0.75),
        titleTextStyle: widgetShowcaseScreenThemeExtension.widgetOptionsModalTitleTextStyle,
      ),
      child: _WidgetOptionsModal(configurationOptions, stylingOptions),
    );
  }

  const _WidgetOptionsModal(this._configurationOptions, this._stylingOptions);

  final List<Widget> _configurationOptions;
  final List<Widget> _stylingOptions;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseScreenThemeExtension>();
    final widgetOptionsModalSpacing = themeExtension.widgetOptionsModalSpacing;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(bottom: widgetOptionsModalSpacing / 1.5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: widgetOptionsModalSpacing,
          children: [
            // Configuration Options Section.
            if (_configurationOptions.isNotEmpty) ...[
              const _SectionHeader(title: 'Configuration'),
              _OptionsList(options: _configurationOptions),
            ],

            // Section Separator.
            if (_configurationOptions.isNotEmpty && _stylingOptions.isNotEmpty) ...[
              const MyoroBasicDivider(Axis.horizontal),
            ],

            // Styling Options Section.
            if (_stylingOptions.isNotEmpty) ...[
              const _SectionHeader(title: 'Styling'),
              _OptionsList(options: _stylingOptions),
            ],
          ],
        ),
      ),
    );
  }
}
