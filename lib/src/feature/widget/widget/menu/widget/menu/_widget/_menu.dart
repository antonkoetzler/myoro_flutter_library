part of '../bundle/myoro_menu_bundle.dart';

/// A menu widget that should not be used in production code, it is used
/// within [MyoroSingleDropdown], [MyoroMultiDropdown] & [MyoroInput].
class _Menu<T, C extends _C<T>> extends StatefulWidget {
  const _Menu(this._viewModel, this._themeExtension);

  /// View model.
  final MyoroMenuViewModel<T, C> _viewModel;

  /// Theme extension.
  final MyoroMenuThemeExtension? _themeExtension;

  @override
  State<_Menu<T, C>> createState() => _MenuState<T, C>();
}

final class _MenuState<T, C extends _C<T>> extends State<_Menu<T, C>> {
  MyoroMenuViewModel<T, C> get _viewModel => widget._viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel.fetch();
  }

  @override
  Widget build(context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final themeExtension = widget._themeExtension ?? MyoroMenuThemeExtension.builder(colorScheme, textTheme);
    final backgroundColor = themeExtension.backgroundColor;
    final border = themeExtension.border;
    final borderRadius = themeExtension.borderRadius;
    final constraints = themeExtension.constraints;

    return InheritedProvider.value(
      value: _viewModel,
      child: Container(
        decoration: BoxDecoration(color: backgroundColor, border: border, borderRadius: borderRadius),
        constraints: constraints,
        child: ValueListenableBuilder(
          valueListenable: _viewModel.state.itemsRequestNotifier,
          builder: (_, MyoroRequest<Set<T>> state, _) {
            _viewModel.jumpToBottomPreviousPosition();
            return switch (state.status) {
              MyoroRequestEnum.idle => const _Loader(),
              MyoroRequestEnum.loading => const _Loader(),
              MyoroRequestEnum.success => _SuccessContent<T, C>(),
              MyoroRequestEnum.error => const _DialogText('Error getting items.'),
            };
          },
        ),
      ),
    );
  }
}
