part of '../widget/myoro_search_input.dart';

/// [State] of [MyoroSearchInput].
final class _MyoroSearchInputState<T> extends State<MyoroSearchInput<T>> {
  /// View model.
  late final MyoroSearchInputViewModel<T> _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroSearchInputViewModel(widget.label, widget.selectedItemBuilder, widget.request);
  }

  /// Dispose function.
  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    final state = _viewModel.state;
    final showingController = state.showingController;
    final requestController = state.requestController;
    final selectedItemController = state.selectedItemController;

    return InheritedProvider.value(
      value: _viewModel,
      child: ListenableBuilder(
        listenable: Listenable.merge([requestController, selectedItemController]),
        builder: (_, _) {
          final request = requestController.value;
          final selectedItem = selectedItemController.value;

          final status = request.status;

          return MyoroDropdown<T>(
            showingController: showingController,
            itemBuilder: widget.itemBuilder,
            selectedItems: {?selectedItem},
            items: switch (status) {
              MyoroRequestEnum.idle => null,
              MyoroRequestEnum.loading => null,
              MyoroRequestEnum.success => request.data!,
              MyoroRequestEnum.error => null,
            },
            child: const _Input(),
          );
        },
      ),
    );
  }
}
