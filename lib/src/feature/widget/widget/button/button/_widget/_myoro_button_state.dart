part of '../widget/myoro_button.dart';

/// [State] of [MyoroButton].
final class _MyoroButtonState extends State<MyoroButton> {
  /// View model.
  late final MyoroButtonViewModel _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroButtonViewModel(widget.tooltipText, widget.onTapDown, widget.onTapUp, widget.isLoading);
  }

  /// Did update function.
  @override
  void didUpdateWidget(MyoroButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    final state = _viewModel.state;
    state.tooltipText = widget.tooltipText;
    state.onTapDown = widget.onTapDown;
    state.onTapUp = widget.onTapUp;
    state.isLoading = widget.isLoading;
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
    final onEnter = _viewModel.onEnter;
    final onExit = _viewModel.onExit;
    final onTapCancel = _viewModel.onTapCancel;
    final onTapDown = _viewModel.onTapDown;
    final onTapUp = _viewModel.onTapUp;
    final state = _viewModel.state;
    final isLoadingController = state.isLoadingController;
    final onTapProvided = state.onTapProvided;
    final tapStatusController = state.tapStatusController;
    final effectiveCursor = widget.cursor ?? (onTapProvided ? SystemMouseCursors.click : SystemMouseCursors.basic);

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: widget.style),
        InheritedProvider.value(value: _viewModel),
      ],
      child: MouseRegion(
        cursor: effectiveCursor,
        onEnter: onEnter,
        onExit: onExit,
        child: ValueListenableBuilder(
          valueListenable: isLoadingController,
          builder: (_, isLoading, _) => isLoading
              ? const MyoroCircularLoader()
              : GestureDetector(
                  onTapDown: onTapDown,
                  onTapUp: onTapUp,
                  onTapCancel: onTapCancel,
                  child: ValueListenableBuilder(
                    valueListenable: tapStatusController,
                    builder: (_, tapStatusEnum, _) => _Button(tapStatusEnum, widget.builder),
                  ),
                ),
        ),
      ),
    );
  }
}
