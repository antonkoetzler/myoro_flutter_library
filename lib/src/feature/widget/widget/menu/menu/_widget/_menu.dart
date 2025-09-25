part of '../bundle/myoro_menu_bundle.dart';

/// A menu widget that should not be used in production code, it is used
/// within [MyoroSingleDropdown], [MyoroMultiDropdown] & [MyoroInput].
class _Menu<T, C extends _C<T>> extends StatefulWidget {
  const _Menu(this._viewModel, this._style);

  /// View model.
  final MyoroMenuViewModel<T, C> _viewModel;

  /// Style.
  final MyoroMenuStyle _style;

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
    final themeExtension = MyoroMenuThemeExtension.builder(colorScheme, textTheme);
    final style = widget._style;
    final backgroundColor = style.backgroundColor ?? themeExtension.backgroundColor;
    final border = style.border ?? themeExtension.border;
    final borderRadius = style.borderRadius ?? themeExtension.borderRadius;
    final constraints = style.constraints ?? themeExtension.constraints;

    return MultiProvider(
      providers: [
        Provider.value(value: _viewModel),
        InheritedProvider.value(value: style),
      ],
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
