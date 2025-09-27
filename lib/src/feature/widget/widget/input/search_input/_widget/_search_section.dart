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
      builder: (_, inputSize, _) => Container(
        width: inputSize?.width,
        height: 100,
        color: Colors.pink.withValues(alpha: 0.5),
        // child: MyoroSingleMenu<T>(
        //   configuration: MyoroSingleMenuConfiguration(
        //     itemBuilder: itemBuilder,
        //     request: () => items ?? const {},
        //   ),
        //   style: MyoroMenuStyle(border: menuBorder),
        // ),
      ),
    );
  }
}
