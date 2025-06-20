part of '../widget_showcase_screen.dart';

/// Button that opens the modal with all of the options of said widget showcase.
final class _WidgetOptionsButton extends StatelessWidget {
  const _WidgetOptionsButton();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<WidgetShowcaseScreenViewModel>();
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseScreenThemeExtension>();
    final screenThemeExtension = context.resolveThemeExtension<StoryboardScreenThemeExtension>();

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) => _onTapUp(viewModel)),
        iconConfiguration: MyoroIconConfiguration(icon: themeExtension.widgetOptionsButtonIcon),
        padding: screenThemeExtension.buttonPadding,
      ),
    );
  }

  void _onTapUp(WidgetShowcaseScreenViewModel viewModel) {
    _WidgetOptionsModal._show(
      viewModel.navigatorKey.currentContext!,
      viewModel.configuration.widgetName,
      viewModel.configuration.widgetOptions,
    );
  }
}
