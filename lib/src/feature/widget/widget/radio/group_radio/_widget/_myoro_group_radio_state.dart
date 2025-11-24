part of '../widget/myoro_group_radio.dart';

/// [State] of [MyoroGroupRadio].
final class _MyoroGroupRadioState extends State<MyoroGroupRadio> {
  /// Local controller.
  MyoroGroupRadioController? _localController;

  /// Controller.
  MyoroGroupRadioController get _controller {
    return widget.controller ?? (_localController ??= MyoroGroupRadioController(widget.radios!));
  }

  /// Dispose function.
  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroGroupRadioThemeExtension>();
    final spacing = widget.style.spacing ?? themeExtension.spacing ?? 0;
    final runSpacing = widget.style.runSpacing ?? themeExtension.runSpacing ?? 0;

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: widget.style),
        InheritedProvider.value(value: _controller),
      ],
      child: Consumer<MyoroGroupRadioController>(
        builder: (_, controller, _) {
          final radios = controller.radios;

          return Wrap(
            direction: widget.direction,
            spacing: spacing,
            runSpacing: runSpacing,
            children: radios.entries.map<Widget>((MapEntry<String, bool> entry) {
              return MyoroRadio(
                label: entry.key,
                value: entry.value,
                onChanged: (_) {
                  controller.enable(entry.key);
                  widget.onChanged?.call(entry.key, controller.radios);
                },
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
