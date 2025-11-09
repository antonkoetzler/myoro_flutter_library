part of '../myoro_time_picker_input.dart';

/// [State] of [MyoroTimePickerInput].
final class _MyoroTimePickerInputState extends State<MyoroTimePickerInput> {
  /// View model.
  late final MyoroTimePickerInputViewModel _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroTimePickerInputViewModel(widget.label, widget.validation, widget.onChanged);
  }

  /// Dispose function.
  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: widget.style),
        InheritedProvider.value(value: _viewModel),
      ],
      child: const _Input(),
    );
  }
}
