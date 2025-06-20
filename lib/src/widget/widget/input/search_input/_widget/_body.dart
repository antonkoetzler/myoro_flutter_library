part of '../myoro_search_input.dart';

/// UI of the [MyoroSearchInput].
final class _Body<T> extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroSearchInputThemeExtension>();
    final viewModel = context.read<MyoroSearchInputViewModel>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.spacing,
      children: [const _Input(), if (viewModel.itemsRequest.status.isSuccess) const Flexible(child: _SearchSection())],
    );
  }
}
