part of '../widget/myoro_search_input.dart';

/// [State] of [MyoroSearchInput].
final class _MyoroSearchInputState<T> extends State<MyoroSearchInput<T>> {
  /// View model.
  late final MyoroSearchInputViewModel<T> _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroSearchInputViewModel(
      widget.label,
      widget.placeholder,
      widget.dropdownType,
      widget.itemBuilder,
      widget.selectedItemBuilder,
      widget.requestCallback,
      widget.onChanged,
      widget.onFieldSubmitted,
      widget.validation,
      widget.focusNode,
    );
  }

  /// Did update widget function.
  @override
  void didUpdateWidget(MyoroSearchInput<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state
      ..label = widget.label
      ..placeholder = widget.placeholder
      ..dropdownType = widget.dropdownType
      ..itemBuilder = widget.itemBuilder
      ..selectedItemBuilder = widget.selectedItemBuilder
      ..requestCallback = widget.requestCallback
      ..onChanged = widget.onChanged
      ..onFieldSubmitted = widget.onFieldSubmitted
      ..validation = widget.validation
      ..focusNode = widget.focusNode;
  }

  /// Dispose function.
  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSearchInputThemeExtension>();
    final dropdownConstraints = widget.style.dropdownConstraints ?? themeExtension.dropdownConstraints;

    final state = _viewModel.state;
    final showingController = state.showingController;
    final requestController = state.requestController;
    final selectedItemController = state.selectedItemController;
    final dropdownType = state.dropdownType;
    final inputKey = state.inputKey;
    final itemBuilder = state.itemBuilder;

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: widget.style),
        InheritedProvider.value(value: _viewModel),
      ],
      child: ListenableBuilder(
        listenable: Listenable.merge([requestController, selectedItemController]),
        builder: (_, _) {
          final request = requestController.value;
          final selectedItem = selectedItemController.value;

          final status = request.status;

          return MyoroDropdown<T>(
            style: MyoroDropdownStyle(constraints: dropdownConstraints),
            dropdownType: switch (dropdownType) {
              MyoroSearchInputDropdownTypeEnum.overlay => MyoroDropdownTypeEnum.overlay,
              MyoroSearchInputDropdownTypeEnum.expanding => MyoroDropdownTypeEnum.expanding,
            },
            showingController: showingController,
            itemBuilder: itemBuilder,
            selectedItems: {?selectedItem},
            targetKey: inputKey,
            items: switch (status) {
              MyoroRequestEnum.idle => null,
              MyoroRequestEnum.loading => null,
              MyoroRequestEnum.success => request.data!,
              MyoroRequestEnum.error => null,
            },
            child: _Input<T>(),
          );
        },
      ),
    );
  }
}
