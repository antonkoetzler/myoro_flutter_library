part of '../bundle/myoro_menu_bundle.dart';

/// [MyoroCircularLoader] of the [MyoroMenu].
final class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final dialogTextLoaderPadding = themeExtension.dialogTextLoaderPadding ?? EdgeInsets.zero;
    return Center(
      child: Padding(padding: dialogTextLoaderPadding, child: const MyoroCircularLoader()),
    );
  }
}
