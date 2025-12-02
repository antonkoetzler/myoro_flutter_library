part of '../widget/myoro_search_bar_input.dart';

/// [State] of [MyoroSearchBarInput].
final class _MyoroSearchBarInputState extends State<MyoroSearchBarInput> {
  /// View model.
  late final MyoroSearchBarInputViewModel _viewModel;

  /// Init state function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroSearchBarInputViewModel(
      widget.inputStyle,
      widget.label,
      widget.placeholder,
      widget.autofocus,
      widget.onChanged,
      widget.controller,
    );
  }

  /// Did update widget function.
  @override
  void didUpdateWidget(MyoroSearchBarInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state
      ..inputStyle = widget.inputStyle
      ..label = widget.label
      ..placeholder = widget.placeholder
      ..autofocus = widget.autofocus
      ..onChanged = widget.onChanged
      ..controller = widget.controller;
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
        Provider.value(value: widget.style),
        Provider.value(value: _viewModel),
      ],
      child: const _Input(),
    );
  }
}
