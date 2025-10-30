part of '../myoro_currency_input.dart';

/// [State] of [MyoroCurrencyInput].
final class _MyoroCurrencyInputState extends State<MyoroCurrencyInput> {
  /// View model.
  late final MyoroCurrencyInputViewModel _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroCurrencyInputViewModel(widget.currency);
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
