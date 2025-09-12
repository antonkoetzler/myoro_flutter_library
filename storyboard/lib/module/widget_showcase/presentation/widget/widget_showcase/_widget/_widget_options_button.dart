part of '../widget_showcase_screen.dart';

/// Button that opens the modal with all of the options of said widget showcase.
final class _WidgetOptionsButton extends StatelessWidget {
  const _WidgetOptionsButton();

  @override
  Widget build(context) {
    final viewModel = context.read<WidgetShowcaseScreenViewModel>();
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseScreenThemeExtension>();
    // final screenThemeExtension = context.resolveThemeExtension<StoryboardScreenThemeExtension>();

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        onTapUp: (_) => _onTapUp(context, viewModel, themeExtension),
        iconConfiguration: MyoroIconConfiguration(icon: themeExtension.widgetOptionsButtonIcon),
        // padding: screenThemeExtension.buttonPadding,
      ),
    );
  }

  void _onTapUp(
    BuildContext context,
    WidgetShowcaseScreenViewModel viewModel,
    WidgetShowcaseScreenThemeExtension themeExtension,
  ) {
    _WidgetOptionsModal._show(
      context,
      viewModel.navigatorKey.currentContext!,
      viewModel.configuration.widgetName,
      viewModel.configuration.widgetOptions,
    );
  }
}
