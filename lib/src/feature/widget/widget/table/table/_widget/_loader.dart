part of '../myoro_table.dart';

/// [MyoroCircularLoader] of a [MyoroTable].
final class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    final style = context.read<MyoroTableStyle>();
    final loaderEmptyMessageErrorMessagePadding =
        style.loaderEmptyMessageErrorMessagePadding ??
        themeExtension.loaderEmptyMessageErrorMessagePadding ??
        EdgeInsets.zero;
    return Padding(padding: loaderEmptyMessageErrorMessagePadding, child: const MyoroCircularLoader());
  }
}
