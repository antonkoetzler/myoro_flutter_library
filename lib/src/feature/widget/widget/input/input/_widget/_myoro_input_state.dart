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
    state.formatter = widget.formatter;
    state.inputStyle = widget.inputStyle;
    state.textAlign = widget.textAlign;
    state.label = widget.label;
    if (widget.text.isNotEmpty) state.controller.text = widget.text;
    state.placeholder = widget.placeholder;
    state.prefix = widget.prefix;
    state.suffix = widget.suffix;
    state.enabled = widget.enabled;
    state.readOnly = widget.readOnly;
    state.autofocus = widget.autofocus;
    state.enableInteractiveSelection = widget.enableInteractiveSelection;
    state.canShowClearTextButton = widget.canShowClearTextButton;
    state.showObscureTextButton = widget.showObscureTextButton;
    state.checkboxOnChanged = widget.checkboxOnChanged;
    state.validation = widget.validation;
    state.onFieldSubmitted = widget.onFieldSubmitted;
    state.onChanged = widget.onChanged;
    state.onCleared = widget.onCleared;
    state.inputKey = widget.inputKey;
    state.onTap = widget.onTap;
    state.focusNode = widget.focusNode;
    state.controller = widget.controller;
    state.obscureText = widget.obscureText;
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
              if (widget.suffix != null) widget.suffix!,
            ],
          );
        },
      ),
    );
  }
}
