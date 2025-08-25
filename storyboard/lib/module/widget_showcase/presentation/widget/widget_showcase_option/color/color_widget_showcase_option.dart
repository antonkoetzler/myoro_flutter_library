import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [Color] from a [MyoroSingularDropdown].
final class ColorWidgetShowcaseOption extends StatefulWidget {
  static const labelDefaultValue = 'Color';
  static const enabledDefaultValue = true;

  const ColorWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.enabled = enabledDefaultValue,
    this.selectedColor,
    required this.onChanged,
    this.checkboxOnChanged,
  });

  /// [MyoroDropdownConfiguration.label]
  final String label;

  /// [MyoroDropdownControllerState.enabled]
  final bool enabled;

  /// Initial [Color].
  final Color? selectedColor;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<Color> onChanged;

  /// [MyoroSingularDropdownConfiguration.checkboxOnChanged].
  final MyoroSingularDropdownConfigurationCheckboxOnChanged<Color>? checkboxOnChanged;

  @override
  State<ColorWidgetShowcaseOption> createState() => _ColorWidgetShowcaseOptionState();
}

final class _ColorWidgetShowcaseOptionState extends State<ColorWidgetShowcaseOption> {
  String get _label => widget.label;
  bool get _enabled => widget.enabled;
  Color? get _selectedColor => widget.selectedColor;
  MyoroSingularDropdownConfigurationOnChanged<Color> get _onChanged => widget.onChanged;
  MyoroSingularDropdownConfigurationCheckboxOnChanged<Color>? get _checkboxOnChanged => widget.checkboxOnChanged;

  late final MyoroSingularDropdownController<Color> _controller;

  @override
  void initState() {
    super.initState();
    _controller = MyoroSingularDropdownController(
      configuration: MyoroSingularDropdownConfiguration(
        label: _label,
        menuConfiguration: MyoroSingularMenuConfiguration(
          request: kMyoroTestColors.toSet,
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
                          borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
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
        checkboxOnChanged: _checkboxOnChanged,
        enabled: _enabled,
        selectedItem: _selectedColor,
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
  Widget build(context) => MyoroSingularDropdown<Color>(controller: _controller);
}
