part of '../myoro_search_input.dart';

/// [MyoroSingleMenu] displaying the search results.
final class _SearchSection<T> extends StatelessWidget {
  const _SearchSection();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSearchInputViewModel<T>>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final itemBuilder = configuration.itemBuilder;
    final items = state.itemsRequest.data;
    final inputSizeNotifier = state.inputSizeNotifier;

    final themeExtension = context.resolveThemeExtension<MyoroSearchInputThemeExtension>();
    final style = context.read<MyoroSearchInputStyle>();
    final menuBorder = style.menuBorder ?? themeExtension.menuBorder;

    return ValueListenableBuilder(
      valueListenable: inputSizeNotifier,
      builder: (_, inputSize, _) => SizedBox(
        width: inputSize?.width,
        child: MyoroSingleMenu<T>(
          configuration: MyoroSingleMenuConfiguration(itemBuilder: itemBuilder, request: () => items ?? const {}),
          style: MyoroMenuStyle(border: menuBorder),
        ),
      ),
    );
  }
}
