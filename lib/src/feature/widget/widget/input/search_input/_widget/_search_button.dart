part of '../myoro_search_input.dart';

/// Suffix search button of the [MyoroSearchInput].
final class _SearchButton<T> extends StatelessWidget {
  const _SearchButton(this._itemsRequest);

  final MyoroRequest<Set<T>> _itemsRequest;

  @override
  Widget build(BuildContext context) {
    final inputThemeExtension = context.resolveThemeExtension<MyoroSearchInputThemeExtension>();
    final style = context.read<MyoroSearchInputStyle>();
    final viewModel = context.read<MyoroSearchInputViewModel<T>>();
    final state = viewModel.state;
    final inputSizeNotifier = state.inputSizeNotifier;

    return ValueListenableBuilder(
      valueListenable: inputSizeNotifier,
      builder: (_, inputSize, _) {
        final inputHeight = inputSize != null ? inputSize.height - kMyoroBorderWidth : null;

        return MyoroButton(
          configuration: MyoroButtonConfiguration(onTapUp: (_) => viewModel.searchButtonOnTapUp()),
          style: const MyoroButtonStyle().bordered(context),
          builder: (_, _) => SizedBox(
            height: inputHeight,
            width: inputHeight,
            child: _itemsRequest.status.isLoading
                ? const Center(child: MyoroCircularLoader())
                : Icon(style.searchButtonIcon ?? inputThemeExtension.searchButtonIcon),
          ),
        );
      },
    );
  }
}
