part of '../myoro_drawer.dart';

/// Close button of [MyoroDrawer].
final class _CloseButton extends StatelessWidget {
  const _CloseButton();

  @override
  Widget build(context) {
    final drawerController = context.read<MyoroDrawerController>();
    final themeExtension = context.resolveThemeExtension<MyoroDrawerThemeExtension>();

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        borderBuilder: (_) => MyoroButtonStyleEnum.border(context),
        onTapUp: (_) => context.closeDrawer(),
        iconConfiguration: MyoroIconConfiguration(
          icon:
              !drawerController.isEndDrawer
                  ? themeExtension.closeButtonDrawerIcon
                  : themeExtension.closeButtonEndDrawerIcon,
        ),
      ),
    );
  }
}
