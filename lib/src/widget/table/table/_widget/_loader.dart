part of '../myoro_table.dart';

/// [MyoroCircularLoader] of a [MyoroTable].
final class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Padding(padding: themeExtension.loaderEmptyMessageErrorMessagePadding, child: const MyoroCircularLoader());
  }
}
