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
      widget.onChanged,
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
      ..onChanged = widget.onChanged;
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

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: widget.style),
        InheritedProvider.value(value: _viewModel),
      ],
      child: MyoroDropdown(
        showingController: showingController,
        items: MyoroCurrencyEnum.values.toSet(),
        itemBuilder: itemBuilder,
        child: const _Input(),
      ),
    );
  }
}
