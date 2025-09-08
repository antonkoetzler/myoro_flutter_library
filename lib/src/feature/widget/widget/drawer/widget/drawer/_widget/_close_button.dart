part of '../myoro_drawer.dart';

/// Close button of [MyoroDrawer].
final class _CloseButton extends StatelessWidget {
  const _CloseButton();

  @override
  Widget build(context) {
    final buttonSecondaryVariantThemeExtension = context
        .resolveThemeExtension<MyoroButtonSecondaryVariantThemeExtension>();

    final drawerController = context.read<MyoroDrawerController>();

    final configuration = context.read<MyoroDrawerConfiguration>();
    final closeButtonIcon = configuration.closeButtonIcon;

    return MyoroIconTextButton(
      themeExtension: MyoroIconTextButtonThemeExtension.fromVariant(
        buttonSecondaryVariantThemeExtension,
      ),
      configuration: MyoroIconTextButtonConfiguration(
        onTapUp: (_) => context.closeDrawer(),
        iconConfiguration: MyoroIconConfiguration(
          icon:
              closeButtonIcon ??
              (!drawerController.isEndDrawer
                  ? Icons.keyboard_arrow_left
                  : Icons.keyboard_arrow_right),
        ),
      ),
    );
  }
}
