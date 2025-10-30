part of '../myoro_date_picker_input.dart';

/// [State] of [MyoroDatePickerInput].
final class _MyoroDatePickerInputState extends State<MyoroDatePickerInput> {
  /// View model.
  late final MyoroDatePickerInputViewModel _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroDatePickerInputViewModel(widget.inputController);
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
      child: const _Input(),
    );
  }
}
