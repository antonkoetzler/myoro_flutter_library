part of '../widget/myoro_checkbox.dart';

/// [State] of [MyoroCheckbox].
final class _MyoroCheckboxState extends State<MyoroCheckbox> {
  /// View model.
  late final MyoroCheckboxViewModel _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroCheckboxViewModel(
      widget.label,
      widget.value,
      widget.enabled,
      widget.onChanged,
      widget.disabledOnTapUp,
    );
  }

  /// Did update function.
  @override
  void didUpdateWidget(MyoroCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state
      ..label = widget.label
      ..value = widget.value
      ..enabled = widget.enabled
      ..onChanged = widget.onChanged
      ..disabledOnTapUp = widget.disabledOnTapUp;
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
    final themeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();
    final spacing = widget.style.spacing ?? themeExtension.spacing ?? 0;

    final viewModel = _viewModel;
    final onTapUp = viewModel.onTapUp;

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: widget.style),
        InheritedProvider.value(value: _viewModel),
      ],
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTapUp: onTapUp,
          child: Row(
            spacing: spacing,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const _Checkbox(),
              if (widget.label.isNotEmpty) const Flexible(child: _Label()),
            ],
          ),
        ),
      ),
    );
  }
}
