part of '../widget/myoro_menu.dart';

/// [MyoroCircularLoader] of the a menu.
final class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final style = context.watch<MyoroMenuStyle>();
    final dialogTextLoaderPadding =
        style.dialogTextLoaderPadding ?? themeExtension.dialogTextLoaderPadding ?? EdgeInsets.zero;
    return Center(
      child: Padding(padding: dialogTextLoaderPadding, child: const MyoroCircularLoader()),
    );
  }
}
