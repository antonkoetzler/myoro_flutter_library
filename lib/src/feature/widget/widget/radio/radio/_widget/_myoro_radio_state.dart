part of '../widget/myoro_radio.dart';

/// [State] of [MyoroRadio].
final class _MyoroRadioState extends State<MyoroRadio> {
  /// Local controller.
  ValueNotifier<bool>? _localController;

  /// Controller.
  ValueNotifier<bool> get _controller {
    return widget.controller ?? (_localController ??= ValueNotifier(widget.initialValue ?? false));
  }

  /// Dispose function.
  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroRadioThemeExtension>();
    final spacing = widget.style.spacing ?? themeExtension.spacing ?? 0;
    final labelTextStyle = widget.style.labelTextStyle ?? themeExtension.labelTextStyle;
    final activeColor = widget.style.activeColor ?? themeExtension.activeColor;
    final hoverColor = widget.style.hoverColor ?? themeExtension.hoverColor;
    final splashRadius = widget.style.splashRadius ?? themeExtension.splashRadius;

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: widget.style),
        InheritedProvider.value(value: _controller),
      ],
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: spacing,
        children: [
          Consumer<ValueNotifier<bool>>(
            builder: (_, controller, _) {
              final enabled = controller.value;
              return Radio(
                value: true,
                groupValue: controller.value,
                toggleable: true,
                activeColor: activeColor,
                hoverColor: hoverColor,
                splashRadius: splashRadius,
                onChanged: (_) {
                  controller.value = !enabled;
                  widget.onChanged?.call(controller.value);
                },
              );
            },
          ),
          if (widget.label.isNotEmpty) Flexible(child: Text(widget.label, style: labelTextStyle)),
        ],
      ),
    );
  }
}
