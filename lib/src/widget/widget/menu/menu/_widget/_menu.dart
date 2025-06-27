part of '../myoro_menu.dart';

/// [Widget] displayed when [MyoroMenuConfiguration.request] is successful.
final class _Menu<T> extends StatelessWidget {
  const _Menu();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final viewModel = context.read<MyoroMenuViewModel<T>>();
    final borderRadius = viewModel.state.configuration.borderRadius ?? themeExtension.borderRadius;

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: borderRadius.copyWith(
        topLeft: themeExtension.createMenuContentRadius(borderRadius.topLeft),
        topRight: themeExtension.createMenuContentRadius(borderRadius.topRight),
        bottomLeft: themeExtension.createMenuContentRadius(borderRadius.bottomLeft),
        bottomRight: themeExtension.createMenuContentRadius(borderRadius.bottomRight),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (viewModel.state.configuration.searchCallback != null) _SearchBar<T>(),
          Flexible(
            child: ValueListenableBuilder(
              valueListenable: viewModel.state.queriedItemsController,
              builder: (_, _, _) => _ItemsSection<T>(),
            ),
          ),
        ],
      ),
    );
  }
}
