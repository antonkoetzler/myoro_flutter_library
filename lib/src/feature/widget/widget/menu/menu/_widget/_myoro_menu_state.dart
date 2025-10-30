part of '../widget/myoro_menu.dart';

/// [State] of [MyoroMenu].
final class _MyoroMenuState<T> extends State<MyoroMenu<T>> {
  /// View model.
  late final MyoroMenuViewModel<T> _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroMenuViewModel<T>(widget.searchCallback, widget.items, widget.selectedItems, widget.itemBuilder);
  }

  /// Dispose function.
  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  /// Build function.
  @override
  Widget build(_) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: widget.style),
        InheritedProvider.value(value: _viewModel),
      ],
      child: _Base<T>(),
    );
  }
}
