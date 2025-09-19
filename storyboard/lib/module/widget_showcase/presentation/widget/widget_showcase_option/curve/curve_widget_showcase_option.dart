import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [Curve] from a [MyoroSingularDropdown].
final class CurveWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Animation curve';
  static const enabledDefaultValue = true;

  const CurveWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.enabled = enabledDefaultValue,
    this.selectedCurve,
    required this.onChanged,
    this.checkboxOnChanged,
  });

  /// [MyoroDropdownConfiguration.label]
  final String label;

  /// [MyoroDropdownControllerState.enabled]
  final bool enabled;

  /// Initial [Curve].
  final Curve? selectedCurve;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<Curve> onChanged;

  /// [MyoroSingularDropdownConfiguration.checkboxOnChanged].
  final MyoroSingularDropdownConfigurationCheckboxOnChanged<Curve>? checkboxOnChanged;

  static const _curves = {
    'linear': Curves.linear,
    'ease': Curves.ease,
    'easeIn': Curves.easeIn,
    'easeOut': Curves.easeOut,
    'easeInOut': Curves.easeInOut,
    'fastOutSlowIn': Curves.fastOutSlowIn,
    'bounceIn': Curves.bounceIn,
    'bounceOut': Curves.bounceOut,
    'elasticIn': Curves.elasticIn,
    'elasticOut': Curves.elasticOut,
  };

  @override
  Widget build(context) {
    return MyoroSingularDropdown<Curve>(
      configuration: MyoroSingularDropdownConfiguration(
        label: label,
        allowItemClearing: true,
        selectedItemBuilder: (c) {
          return _curves.entries
              .firstWhere((entry) => entry.value == c, orElse: () => const MapEntry('custom', Curves.linear))
              .key;
        },
        onChanged: onChanged,
        checkboxOnChanged: checkboxOnChanged,
        enabled: enabled,
        menuConfiguration: MyoroSingularMenuConfiguration(
          request: _curves.values.toSet,
          selectedItem: selectedCurve,
          itemBuilder: (curve) {
            final name = _curves.entries.firstWhere((entry) => entry.value == curve).key;
            return MyoroMenuItem(
              iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
                textConfiguration: MyoroTextConfiguration(text: name),
              ),
            );
          },
        ),
      ),
    );
  }
}
