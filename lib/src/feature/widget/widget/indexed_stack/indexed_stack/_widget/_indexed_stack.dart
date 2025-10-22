part of '../myoro_indexed_stack.dart';

/// Indexed stack [Widget] of [MyoroIndexedStack].
final class _IndexedStack extends StatelessWidget {
  const _IndexedStack(this._index, this._children);

  final int _index;
  final List<Widget> _children;

  @override
  Widget build(context) {
    return IndexedStack(index: _index, children: _children);
  }
}
