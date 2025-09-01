part of '../bundle/myoro_menu_bundle.dart';

/// A menu widget that should not be used in production code, it is used
/// within [MyoroSingularDropdown], [MyoroMultiDropdown] & [MyoroInput].
class _Menu<T, C extends _C<T>> extends StatefulWidget {
  const _Menu(this._viewModel);

  /// View model.
  final MyoroMenuViewModel<T, C> _viewModel;

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
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final configuration = _viewModel.state.configuration;

    return InheritedProvider.value(
      value: _viewModel,
      child: Container(
        decoration: BoxDecoration(
          color: configuration.backgroundColor ?? themeExtension.backgroundColor,
          border: configuration.border,
          borderRadius: configuration.borderRadius ?? themeExtension.borderRadius,
        ),
        constraints: _viewModel.state.configuration.constraints,
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
