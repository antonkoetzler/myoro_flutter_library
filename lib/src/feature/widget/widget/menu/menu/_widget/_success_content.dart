part of '../widget/myoro_menu.dart';

/// [Widget] displayed when [MyoroMenuConfiguration.request] is successful.
final class _SuccessContent<T> extends StatelessWidget {
  const _SuccessContent();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final style = context.watch<MyoroMenuStyle>();
    var borderRadius = style.borderRadius ?? themeExtension.borderRadius;
    borderRadius =
        borderRadius?.copyWith(
          topLeft: themeExtension.createMenuContentRadius(borderRadius.topLeft),
          topRight: themeExtension.createMenuContentRadius(borderRadius.topRight),
          bottomLeft: themeExtension.createMenuContentRadius(borderRadius.bottomLeft),
          bottomRight: themeExtension.createMenuContentRadius(borderRadius.bottomRight),
        ) ??
        BorderRadius.zero;

    final viewModel = context.read<MyoroMenuViewModel<T>>();
    final state = viewModel.state;
    final searchCallback = state.searchCallback;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (searchCallback != null) _SearchBar<T>(),
        Flexible(child: _ItemsSection<T>()),
      ],
    );
  }
}
