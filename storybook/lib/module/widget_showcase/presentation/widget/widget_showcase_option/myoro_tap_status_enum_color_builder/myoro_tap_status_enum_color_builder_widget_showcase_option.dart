import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// [WidgetShowcase] option of a builder that provides
/// a [MyoroTapStatusEnum] and returns a [Color].
final class MyoroTapStatusEnumColorBuilderWidgetShowcaseOption extends StatefulWidget {
  const MyoroTapStatusEnumColorBuilderWidgetShowcaseOption({super.key, required this.configuration});

  /// Configuration.
  final MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration configuration;

  @override
  State<MyoroTapStatusEnumColorBuilderWidgetShowcaseOption> createState() =>
      _MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionState();
}

final class _MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionState
    extends State<MyoroTapStatusEnumColorBuilderWidgetShowcaseOption> {
  MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration get _configuration => widget.configuration;

  late final _viewModel = MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionViewModel(_configuration);

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final enabledController = _viewModel.enabledController;

    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final label = _configuration.label;
    final enabled = _configuration.enabled;
    final checkboxOnChanged = _configuration.checkboxOnChanged;
    final selectedIdleColor = _configuration.selectedIdleColor;
    final idleOnChanged = _configuration.idleOnChanged;
    final selectedHoverColor = _configuration.selectedHoverColor;
    final hoverOnChanged = _configuration.hoverOnChanged;
    final selectedTapColor = _configuration.selectedTapColor;
    final tapOnChanged = _configuration.tapOnChanged;

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: widgetShowcaseThemeExtension.spacing,
      children: [
        MyoroCheckbox(
          label: label,
          value: enabled,
          onChanged: (enabled) {
            checkboxOnChanged(enabled);
            enabledController.value = enabled;
          },
        ),
        ValueListenableBuilder(
          valueListenable: enabledController,
          builder: (_, bool enabled, _) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              spacing: widgetShowcaseThemeExtension.spacing,
              children: [
                ColorWidgetShowcaseOption(
                  label: 'Idle color',
                  selectedColor: selectedIdleColor,
                  enabled: enabled,
                  onChanged: idleOnChanged,
                ),
                ColorWidgetShowcaseOption(
                  label: 'Hover color',
                  selectedColor: selectedHoverColor,
                  enabled: enabled,
                  onChanged: hoverOnChanged,
                ),
                ColorWidgetShowcaseOption(
                  label: 'Tap color',
                  selectedColor: selectedTapColor,
                  enabled: enabled,
                  onChanged: tapOnChanged,
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
