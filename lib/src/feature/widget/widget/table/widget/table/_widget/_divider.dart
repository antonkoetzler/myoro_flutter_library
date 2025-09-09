part of '../myoro_table.dart';

/// [MyoroBasicDivider] of a [MyoroTable].
final class _Divider extends StatelessWidget {
  final Axis _direction;

  const _Divider(this._direction);

  @override
  Widget build(_) => MyoroBasicDivider(_direction);
}
