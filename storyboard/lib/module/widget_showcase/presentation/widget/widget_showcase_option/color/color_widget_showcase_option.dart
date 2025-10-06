import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [Color] from a [MyoroSingleSelectionDropdown].
final class ColorWidgetShowcaseOption extends StatefulWidget {
  static const labelDefaultValue = 'Color';
  static const enabledDefaultValue = true;

  const ColorWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.enabled = enabledDefaultValue,
    this.selectedColor,
    required this.onChanged,
  });

  /// [MyoroSelectionDropdownConfiguration.label]
  final String label;

  /// [MyoroDropdownControllerState.enabled]
  final bool enabled;

  /// Initial [Color].
  final Color? selectedColor;

  /// [MyoroSingleSelectionDropdownConfiguration.onChanged]
  final MyoroSingleMenuOnChanged<Color> onChanged;

  @override
  State<ColorWidgetShowcaseOption> createState() => _ColorWidgetShowcaseOptionState();
}

final class _ColorWidgetShowcaseOptionState extends State<ColorWidgetShowcaseOption> {
  String get _label => widget.label;
  bool get _enabled => widget.enabled;
  Color? get _selectedColor => widget.selectedColor;
  MyoroSingleMenuOnChanged<Color> get _onChanged => widget.onChanged;

  late final MyoroSingleSelectionDropdownController<Color> _controller;

  @override
  void initState() {
    super.initState();
    _controller = MyoroSingleSelectionDropdownController(
      configuration: MyoroSingleSelectionDropdownConfiguration(
        label: _label,
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: kMyoroTestColors.toSet,
          selectedItem: _selectedColor,
          itemBuilder: (color) {
            return MyoroMenuItem(
              buttonBuilder: (_, _) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    spacing: 8,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kMyoroBorderRadius),
                          color: color,
                        ),
                      ),
                      Expanded(child: Text(color.hexadecimalFormat)),
                    ],
                  ),
                );
              },
            );
          },
        ),
        selectedItemBuilder: (color) => color.hexadecimalFormat,
        onChanged: _onChanged,
        enabled: _enabled,
      ),
    );
  }

  @override
  void didUpdateWidget(covariant ColorWidgetShowcaseOption oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_enabled != _controller.enabled) _controller.toggleEnabled(_enabled);
    if (_selectedColor != _controller.selectedItem) {
      _controller.clear();
      if (_selectedColor != null) _controller.toggleItem(_selectedColor!);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(context) => MyoroSingleSelectionDropdown<Color>(controller: _controller);
}
