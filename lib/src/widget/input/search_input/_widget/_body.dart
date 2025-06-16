part of '../myoro_search_input.dart';

/// UI of the [MyoroSearchInput].
final class _Body<T> extends StatelessWidget {
  final MyoroSearchInputController<T> _controller;

  const _Body(this._controller);

  @override
  Widget build(BuildContext context) {
    final itemsRequestStatus = _controller.itemsRequest.status;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _Input(_controller),
        if (itemsRequestStatus.isSuccess) ...[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: context.resolveThemeExtension<MyoroSearchInputThemeExtension>().spacing),
              Flexible(child: _SearchSection(_controller)),
            ],
          ),
        ],
      ],
    );
  }
}
