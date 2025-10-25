part of '../widget_showcase_screen.dart';

/// Button that opens the modal with all of the options of said widget showcase.
final class _WidgetOptionsButton extends StatelessWidget {
  const _WidgetOptionsButton();

  @override
  Widget build(context) {
    final viewModel = context.read<WidgetShowcaseScreenViewModel>();
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseScreenThemeExtension>();

    return MyoroIconTextButton(
      onTapUp: (_) {
        _WidgetOptionsModal._show(
          context,
          viewModel.navigatorKey.currentContext!,
          viewModel.configuration.widgetName,
          viewModel.configuration.configurationOptions,
          viewModel.configuration.stylingOptions,
        );
      },
      iconConfiguration: MyoroIconConfiguration(icon: themeExtension.widgetOptionsButtonIcon),
    );
  }
}
