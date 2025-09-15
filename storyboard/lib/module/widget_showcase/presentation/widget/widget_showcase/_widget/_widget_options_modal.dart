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

    await MyoroModal.showModal(
      navigatorContext,
      configuration: MyoroModalConfiguration(title: 'Options of $widgetName', useRootNavigator: false),
      themeExtension: modalThemeExtension.copyWith(padding: EdgeInsets.zero),
      child: _WidgetOptionsModal(configurationOptions, stylingOptions),
    );
  }

  const _WidgetOptionsModal(this._configurationOptions, this._stylingOptions);

  final List<Widget> _configurationOptions;
  final List<Widget> _stylingOptions;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseScreenThemeExtension>();

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: themeExtension.widgetOptionsModalSpacing,
        children: [
          // Configuration Options Section
          if (_configurationOptions.isNotEmpty) ...[
            const _SectionHeader(title: 'Configuration'),
            _OptionsList(options: _configurationOptions),
          ],

          // Section Separator
          if (_configurationOptions.isNotEmpty && _stylingOptions.isNotEmpty) ...[
            SizedBox(height: themeExtension.widgetOptionsModalSpacing),
            const MyoroBasicDivider(Axis.horizontal),
            SizedBox(height: themeExtension.widgetOptionsModalSpacing),
          ],

          // Styling Options Section
          if (_stylingOptions.isNotEmpty) ...[
            const _SectionHeader(title: 'Styling'),
            _OptionsList(options: _stylingOptions),
          ],

          // Bottom spacing
          SizedBox(height: themeExtension.widgetOptionsModalSpacing / 3),
        ],
      ),
    );
  }
}
