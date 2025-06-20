part of '../myoro_screen_widget_showcase_screen.dart';

/// Menu button in [_AppBar].
final class _AppBarMenuButton extends StatelessWidget {
  const _AppBarMenuButton();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroScreenWidgetShowcaseScreenThemeExtension>();

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        iconConfiguration: MyoroIconTextButtonIconConfiguration(icon: themeExtension.appBarMenuButtonIcon),
      ),
    );
  }
}
