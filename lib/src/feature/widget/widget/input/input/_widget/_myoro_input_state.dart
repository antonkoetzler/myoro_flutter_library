part of '../widget/myoro_input.dart';

/// [State] of [MyoroInput].
final class _MyoroInputState extends State<MyoroInput> {
  /// View model.
  late final MyoroInputViewModel _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroInputViewModel(
      widget.formatter,
      widget.inputStyle,
      widget.textAlign,
      widget.label,
      widget.text,
      widget.placeholder,
      widget.prefix,
      widget.suffix,
      widget.enabled,
      widget.readOnly,
      widget.autofocus,
      widget.enableInteractiveSelection,
      widget.canShowClearTextButton,
      widget.showObscureTextButton,
      widget.checkboxOnChanged,
      widget.validation,
      widget.onFieldSubmitted,
      widget.onChanged,
      widget.onCleared,
      widget.inputKey,
      widget.onTap,
      widget.focusNode,
      widget.controller,
      widget.obscureText,
    );
  }

  /// Did update function.
  @override
  void didUpdateWidget(MyoroInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    final state = _viewModel.state;
    state
      ..formatter = widget.formatter
      ..inputStyle = widget.inputStyle
      ..textAlign = widget.textAlign
      ..label = widget.label
      ..placeholder = widget.placeholder
      ..prefix = widget.prefix
      ..suffix = widget.suffix
      ..enabled = widget.enabled
      ..readOnly = widget.readOnly
      ..autofocus = widget.autofocus
      ..enableInteractiveSelection = widget.enableInteractiveSelection
      ..canShowClearTextButton = widget.canShowClearTextButton
      ..showObscureTextButton = widget.showObscureTextButton
      ..checkboxOnChanged = widget.checkboxOnChanged
      ..validation = widget.validation
      ..onFieldSubmitted = widget.onFieldSubmitted
      ..onChanged = widget.onChanged
      ..onCleared = widget.onCleared
      ..inputKey = widget.inputKey
      ..onTap = widget.onTap
      ..focusNode = widget.focusNode
      ..controller = widget.controller
      ..obscureText = widget.obscureText;
    if (widget.text.isNotEmpty) state.controller.text = widget.text;
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
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final spacing = widget.style.spacing ?? themeExtension.spacing ?? 0;

    final state = _viewModel.state;
    final enabledController = state.enabledController;

    return MultiProvider(
      providers: [
        Provider.value(value: widget.style),
        Provider.value(value: _viewModel),
      ],
      child: ValueListenableBuilder(
        valueListenable: enabledController,
        builder: (_, enabled, _) {
          return Row(
            spacing: spacing,
            children: [
              if (widget.checkboxOnChanged != null) _Checkbox(enabled),
              Expanded(child: _TextFormField(enabled)),
            ],
          );
        },
      ),
    );
  }
}
