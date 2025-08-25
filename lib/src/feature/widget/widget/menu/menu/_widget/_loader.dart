part of '../bundle/myoro_menu_bundle.dart';

/// [MyoroCircularLoader] of the [MyoroMenu].
final class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    return Center(
      child: Padding(padding: themeExtension.dialogTextLoaderPadding, child: const MyoroCircularLoader()),
    );
  }
}
