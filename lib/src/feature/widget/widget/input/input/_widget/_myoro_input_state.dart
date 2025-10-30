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
      widget.showClearTextButton,
      widget.showObscureTextButton,
      widget.checkboxOnChanged,
      widget.validation,
      widget.onFieldSubmitted,
      widget.onChanged,
      widget.onCleared,
      widget.inputKey,
      widget.onTap,
      widget.focusNode,
      widget.inputController,
      widget.obscureText,
    );
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
