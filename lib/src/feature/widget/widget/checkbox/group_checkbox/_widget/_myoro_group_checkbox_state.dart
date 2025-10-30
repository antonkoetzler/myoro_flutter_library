part of '../widget/myoro_group_checkbox.dart';

/// [State] of [MyoroGroupCheckbox].
final class _MyoroGroupCheckboxState extends State<MyoroGroupCheckbox> {
  /// Local controller.
  MyoroGroupCheckboxController? _localController;

  /// Controller.
  MyoroGroupCheckboxController get _controller {
    return widget.controller ?? (_localController ??= MyoroGroupCheckboxController(checkboxes: widget.checkboxes!));
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
    final themeExtension = context.resolveThemeExtension<MyoroGroupCheckboxThemeExtension>();
    final spacing = widget.style.spacing ?? themeExtension.spacing ?? 0;
    final runSpacing = widget.style.runSpacing ?? themeExtension.runSpacing ?? 0;

    return InheritedProvider.value(
      value: _controller,
      child: Consumer<MyoroGroupCheckboxController>(
        builder: (_, controller, _) {
          final checkboxes = controller.checkboxes;

          return Wrap(
            direction: widget.direction,
            spacing: spacing,
            runSpacing: runSpacing,
            children: checkboxes.entries.map<Widget>((entry) {
              return MyoroCheckbox(
                style: widget.style,
                label: entry.key,
                value: entry.value,
                onChanged: (bool value) {
                  controller.toggle(entry.key, value);
                  widget.onChanged?.call(entry.key, checkboxes);
                },
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
