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

    return Container(
      decoration: BoxDecoration(color: backgroundColor, border: border, borderRadius: borderRadius),
      constraints: constraints,
      clipBehavior: Clip.antiAlias,
      child: Consumer<MyoroMenuViewModel<T>>(
        builder: (_, viewModel, _) {
          final state = viewModel.state;
          final itemsRequestController = state.itemsRequestController;
          final jumpToBottomPreviousPosition = viewModel.jumpToBottomPreviousPosition;

          return ValueListenableBuilder(
            valueListenable: itemsRequestController,
            builder: (_, MyoroRequest<Set<T>> state, _) {
              jumpToBottomPreviousPosition();
              return switch (state.status) {
                MyoroRequestEnum.idle => const _Loader(),
                MyoroRequestEnum.loading => const _Loader(),
                MyoroRequestEnum.success => _SuccessContent<T>(),
                MyoroRequestEnum.error => _DialogText(myoroMenuErrorGettingItemsText),
              };
            },
          );
        },
      ),
    );
  }
}
