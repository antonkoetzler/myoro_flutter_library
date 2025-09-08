part of '../bundle/myoro_menu_bundle.dart';

/// [Widget] displayed when [MyoroMenuConfiguration.request] is successful.
final class _SuccessContent<T, C extends _C<T>> extends StatelessWidget {
  const _SuccessContent();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final viewModel = context.read<MyoroMenuViewModel<T, C>>();
    final borderRadius = viewModel.state.configuration.borderRadius ?? themeExtension.borderRadius;
          borderRadius?.copyWith(
            topLeft: themeExtension.createMenuContentRadius(borderRadius.topLeft),
            topRight: themeExtension.createMenuContentRadius(borderRadius.topRight),
            bottomLeft: themeExtension.createMenuContentRadius(borderRadius.bottomLeft),
            bottomRight: themeExtension.createMenuContentRadius(borderRadius.bottomRight),
          ) ??
          BorderRadius.zero,

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius:borderRadius,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (viewModel.state.configuration.searchCallback != null) _SearchBar<T, C>(),
          Flexible(child: _ItemsSection<T, C>()),
        ],
      ),
    );
  }
}
