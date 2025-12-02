part of '../widget/myoro_menu.dart';

/// [Widget] displayed when the menu request is successful.
final class _SuccessContent<T> extends StatelessWidget {
  /// Default constructor.
  const _SuccessContent(this._queriedItems);

  /// Queried items.
  final Set<T> _queriedItems;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final style = context.watch<MyoroMenuStyle>();
    final footerPadding = style.footerPadding ?? themeExtension.footerPadding ?? EdgeInsets.zero;
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
    final showSearchBar = state.showSearchBar;
    final footer = state.footer;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showSearchBar) _SearchBar<T>(),
        Flexible(child: _ItemsSection<T>(_queriedItems)),
        if (footer != null) Padding(padding: footerPadding, child: footer),
      ],
    );
  }
}
