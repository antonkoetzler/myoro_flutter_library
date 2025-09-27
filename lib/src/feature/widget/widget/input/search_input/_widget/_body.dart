part of '../myoro_search_input.dart';

/// UI of the [MyoroSearchInput].
final class _Body<T> extends StatelessWidget {
  const _Body(this._itemsRequest);

  final MyoroRequest<Set<T>> _itemsRequest;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSearchInputThemeExtension>();
    final style = context.read<MyoroSearchInputStyle>();
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;

    return Column(
      spacing: spacing,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Input<T>(_itemsRequest),
        if (_itemsRequest.status.isSuccess) Flexible(child: _SearchSection<T>()),
      ],
    );
  }
}
