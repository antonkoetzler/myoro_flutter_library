part of '../myoro_currency_input.dart';

/// [State] of [MyoroCurrencyInput].
final class _MyoroCurrencyInputState extends State<MyoroCurrencyInput> {
  /// View model.
  late final MyoroCurrencyInputViewModel _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroCurrencyInputViewModel(
      widget.min,
      widget.max,
      widget.decimalPlaces,
      widget.currency,
      widget.canChangeCurrency,
      widget.autofocus,
      widget.onChanged,
      widget.focusNode,
      widget.controller,
      widget.onFieldSubmitted,
    );
  }

  /// Did update function.
  @override
  void didUpdateWidget(MyoroCurrencyInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    final state = _viewModel.state;
    state
      ..min = widget.min
      ..max = widget.max
      ..decimalPlaces = widget.decimalPlaces
      ..selectedCurrency = widget.currency
      ..canChangeCurrency = widget.canChangeCurrency
      ..autofocus = widget.autofocus
      ..onChanged = widget.onChanged
      ..focusNode = widget.focusNode
      ..controller = widget.controller
      ..onFieldSubmitted = widget.onFieldSubmitted;
  }

  /// Dispose function.
  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  /// Build function.
  @override
  Widget build(context) {
    final state = _viewModel.state;
    final showingController = state.showingController;
    final itemBuilder = _viewModel.itemBuilder;
    final selectedCurrencyController = state.selectedCurrencyController;

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: widget.style),
        InheritedProvider.value(value: _viewModel),
      ],
      child: ValueListenableBuilder(
        valueListenable: selectedCurrencyController,
        builder: (_, selectedCurrency, _) {
          return MyoroDropdown(
            showingController: showingController,
            items: MyoroCurrencyEnum.values.toSet(),
            itemBuilder: itemBuilder,
            selectedItems: {selectedCurrency},
            child: const _Input(),
          );
        },
      ),
    );
  }
}
