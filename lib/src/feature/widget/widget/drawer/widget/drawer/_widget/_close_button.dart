part of '../myoro_drawer.dart';

/// Close button of [MyoroDrawer].
final class _CloseButton extends StatelessWidget {
  const _CloseButton();

  @override
  Widget build(context) {
    final drawerController = context.read<MyoroDrawerController>();

    final configuration = context.read<MyoroDrawerConfiguration>();
    final closeButtonIcon = configuration.closeButtonIcon;

    return MyoroIconTextButton(
      style: MyoroIconTextButtonStyle(
        borderBuilder: (tapStatus) => MyoroButtonVariantEnum.borderBuilder(context, tapStatus),
      ),
      configuration: MyoroIconTextButtonConfiguration(
        onTapUp: (_) => context.closeDrawer(),
        iconConfiguration: MyoroIconConfiguration(
          icon:
              closeButtonIcon ??
              (!drawerController.isEndDrawer ? Icons.keyboard_arrow_left : Icons.keyboard_arrow_right),
        ),
      ),
    );
  }
}
