part of '../myoro_screen_widget_showcase_screen.dart';

/// [MyoroScreen.appBar] of [_Widget].
final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final widgetShowcaseOptionThemeExtension = context.resolveThemeExtension<WidgetShowcaseOptionThemeExtension>();

    return MyoroAppBar(
      configuration: MyoroAppBarConfiguration(
        child: Row(
          spacing: widgetShowcaseOptionThemeExtension.spacing,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [_AppBarTitle(), _AppBarMenuButton()],
        ),
      ),
    );
  }
}
