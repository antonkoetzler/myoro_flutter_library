part of '../bundle/myoro_accordion_bundle.dart';

/// [State] of [_Base].
final class _BaseState<T> extends State<_Base<T>> {
  /// View model.
  late final MyoroAccordionViewModel<T> _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroAccordionViewModel<T>(widget._state);
  }

  /// Did update function.
  @override
  void didUpdateWidget(_Base<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state = widget._state;
  }

  /// Dispose function.
  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  /// Build function.
  @override
  Widget build(BuildContext context) {
    final state = _viewModel.state;

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: _viewModel),
        InheritedProvider.value(value: widget._style),
      ],
      child: switch (state) {
        MyoroMultiAccordionState<T>() => ValueListenableBuilder(
          valueListenable: state.selectedItemsController,
          builder: (_, selectedItems, _) => _Accordion<T>(selectedItems),
        ),
        MyoroSingleAccordionState<T>() => ValueListenableBuilder(
          valueListenable: state.selectedItemController,
          builder: (_, selectedItem, _) => _Accordion<T>({?selectedItem}),
        ),
      },
    );
  }
}
