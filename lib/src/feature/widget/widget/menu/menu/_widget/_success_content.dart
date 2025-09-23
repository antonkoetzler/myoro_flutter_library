part of '../bundle/myoro_menu_bundle.dart';

/// [Widget] displayed when [MyoroMenuConfiguration.request] is successful.
final class _SuccessContent<T, C extends _C<T>> extends StatelessWidget {
  const _SuccessContent();

  @override
  Widget build(context) {
    final themeExtension = MyoroMenuThemeExtension.builder(context.colorScheme, context.textTheme);
    var borderRadius = themeExtension.borderRadius;
    borderRadius =
        borderRadius?.copyWith(
          topLeft: themeExtension.createMenuContentRadius(borderRadius.topLeft),
          topRight: themeExtension.createMenuContentRadius(borderRadius.topRight),
          bottomLeft: themeExtension.createMenuContentRadius(borderRadius.bottomLeft),
          bottomRight: themeExtension.createMenuContentRadius(borderRadius.bottomRight),
        ) ??
        BorderRadius.zero;

    final viewModel = context.read<MyoroMenuViewModel<T, C>>();

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: borderRadius,
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
