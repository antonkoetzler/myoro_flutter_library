part of '../myoro_search_input.dart';

/// UI of the [MyoroSearchInput].
final class _Body<T> extends StatelessWidget {
  const _Body(this._itemsRequest);

  final MyoroRequest<Set<T>> _itemsRequest;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSearchInputThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.spacing,
      children: [
        _Input<T>(_itemsRequest),
        if (_itemsRequest.status.isSuccess) Flexible(child: _SearchSection<T>()),
      ],
    );
  }
}
