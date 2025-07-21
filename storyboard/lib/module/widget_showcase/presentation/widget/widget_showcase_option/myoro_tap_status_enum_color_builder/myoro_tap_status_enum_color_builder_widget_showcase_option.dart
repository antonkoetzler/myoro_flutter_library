import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [WidgetShowcase] option of a builder that provides
/// a [MyoroTapStatusEnum] and returns a [Color].
final class MyoroTapStatusEnumColorBuilderWidgetShowcaseOption extends StatefulWidget {
  const MyoroTapStatusEnumColorBuilderWidgetShowcaseOption({super.key, required this.configuration});

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
    final initiallySelectedIdleColor = _configuration.initiallySelectedIdleColor;
    final idleOnChanged = _configuration.idleOnChanged;
    final initiallySelectedHoverColor = _configuration.initiallySelectedHoverColor;
    final hoverOnChanged = _configuration.hoverOnChanged;
    final initiallySelectedTapColor = _configuration.initiallySelectedTapColor;
    final tapOnChanged = _configuration.tapOnChanged;

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: widgetShowcaseThemeExtension.spacing,
      children: [
        MyoroCheckbox(
          configuration: MyoroCheckboxConfiguration(
            label: label,
            value: enabled,
            onChanged: (enabled) {
              checkboxOnChanged(enabled);
              enabledController.value = enabled;
            },
          ),
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
                  initiallySelectedColor: initiallySelectedIdleColor,
                  enabled: enabled,
                  onChanged: idleOnChanged,
                ),
                ColorWidgetShowcaseOption(
                  label: 'Hover color',
                  initiallySelectedColor: initiallySelectedHoverColor,
                  enabled: enabled,
                  onChanged: hoverOnChanged,
                ),
                ColorWidgetShowcaseOption(
                  label: 'Tap color',
                  initiallySelectedColor: initiallySelectedTapColor,
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
