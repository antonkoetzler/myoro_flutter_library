part of '../widget/myoro_menu.dart';

/// A menu widget that should not be used in production code, it is used
/// within [MyoroSingleDropdown], [MyoroMultiDropdown] & [MyoroInput].
class _Base<T> extends StatelessWidget {
  const _Base();

  @override
  Widget build(context) {
    final localizations = context.localizations;
    final myoroMenuErrorGettingItemsText = localizations.myoroMenuErrorGettingItemsText;

    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final style = context.watch<MyoroMenuStyle>();
    final backgroundColor = style.backgroundColor ?? themeExtension.backgroundColor;
    final border = style.border ?? themeExtension.border;
    final borderRadius = style.borderRadius ?? themeExtension.borderRadius ?? BorderRadius.zero;
    final constraints = style.constraints ?? themeExtension.constraints;

    final viewModel = context.read<MyoroMenuViewModel<T>>();
    final state = viewModel.state;
    final items = state.items;

    return Container(
      decoration: BoxDecoration(color: backgroundColor, border: border, borderRadius: borderRadius),
      constraints: constraints,
      clipBehavior: Clip.antiAlias,
      child: items == null
          ? const _Loader()
          : (items.isEmpty ? _DialogText(myoroMenuErrorGettingItemsText) : _SuccessContent<T>()),
    );
  }
}
