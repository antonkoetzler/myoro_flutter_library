part of '../widget/myoro_drawer.dart';

/// Close button of [MyoroDrawer].
final class _CloseButton extends StatelessWidget {
  const _CloseButton();

  @override
  Widget build(context) {
    final drawerController = context.read<MyoroDrawerController>();

    final themeExtension = context.resolveThemeExtension<MyoroDrawerThemeExtension>();
    final style = context.watch<MyoroDrawerStyle>();
    final closeButtonContentPadding =
        style.closeButtonContentPadding ?? themeExtension.closeButtonContentPadding ?? EdgeInsets.zero;
    final closeButtonIcon = style.closeButtonIcon ?? themeExtension.closeButtonIcon;

    final drawerCloseButtonStyle = const MyoroIconTextButtonStyle()
        .bordered(context)
        .copyWith(contentPadding: closeButtonContentPadding);

    return MyoroIconTextButton(
      style: drawerCloseButtonStyle,
      onTapUp: (_, _) => context.closeDrawer(),
      iconConfiguration: MyoroIconConfiguration(
        icon:
            closeButtonIcon ?? (!drawerController.isEndDrawer ? Icons.keyboard_arrow_left : Icons.keyboard_arrow_right),
      ),
    );
  }
}
