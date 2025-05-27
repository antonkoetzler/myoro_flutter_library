part of '../widget_showcase_screen.dart';

/// Button that opens the modal with all of the options of said widget showcase.
final class _WidgetOptionsButton extends StatelessWidget {
  const _WidgetOptionsButton();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<WidgetShowcaseScreenViewModel>();
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseScreenThemeExtension>();

    return Positioned(
      bottom: 0,
      right: 0,
      child: MyoroIconTextButton(
        configuration: MyoroIconTextButtonConfiguration(
          buttonConfiguration: MyoroButtonConfiguration(
            borderBuilder: (_) => MyoroButtonStyleEnum.border(context),
            onTapUp: (_) {
              _WidgetOptionsModal._show(
                viewModel.navigatorKey.currentContext!,
                viewModel.widgetName,
                viewModel.widgetOptions,
              );
            },
          ),
          iconConfiguration: MyoroIconTextButtonIconConfiguration(icon: themeExtension.widgetOptionsButtonIcon),
        ),
      ),
    );
  }
}
