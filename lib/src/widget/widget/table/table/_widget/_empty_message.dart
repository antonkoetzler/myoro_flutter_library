part of '../myoro_table.dart';

/// Dialog when there are no rows in a [MyoroTable].
final class _EmptyMessage extends StatelessWidget {
  const _EmptyMessage();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Text('No items were found!', style: themeExtension.emptyMessageTextStyle);
  }
}
