part of '../myoro_drawer.dart';

/// Close button of [MyoroDrawer].
final class _CloseButton extends StatelessWidget {
  final bool _isEndDrawer;

  const _CloseButton(this._isEndDrawer);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDrawerThemeExtension>();

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        borderBuilder: (_) => MyoroButtonStyleEnum.border(context),
        onTapUp: (_) => context.closeDrawer(),
        iconConfiguration: MyoroIconConfiguration(
          icon: !_isEndDrawer ? themeExtension.closeButtonDrawerIcon : themeExtension.closeButtonEndDrawerIcon,
        ),
      ),
    );
  }
}
