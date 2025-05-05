import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [WidgetShowcase] option to add customized padding on all sides (top, bottom, left and right).
final class PaddingWidgetShowcaseOption extends StatelessWidget {
  /// Configuration.
  final PaddingWidgetShowcaseOptionConfiguration configuration;

  const PaddingWidgetShowcaseOption({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<PaddingWidgetShowcaseOptionThemeExtension>();
    final PaddingWidgetShowcaseOptionAllConfiguration? allConfiguration =
        configuration.allConfiguration;
    final PaddingWidgetShowcaseOptionSymmetricConfiguration? symmetricConfiguration =
        configuration.symmetricConfiguration;

    return WidgetShowcaseOption(
      labelConfiguration:
          configuration.labelConfiguration ??
          const WidgetShowcaseOptionLabelConfiguration(label: 'Padding'),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: themeExtension.spacing,
        children: [
          ...switch (configuration.effectiveConfiguration) {
            PaddingWidgetShowcaseOptionConfigurationEnum.all => [
              _InputRow(
                leftLabel: 'Top',
                leftOnChanged: allConfiguration!.topOnChanged,
                rightLabel: 'Bottom',
                rightOnChanged: allConfiguration.rightOnChanged,
              ),
              _InputRow(
                leftLabel: 'Left',
                leftOnChanged: allConfiguration.leftOnChanged,
                rightLabel: 'Right',
                rightOnChanged: allConfiguration.rightOnChanged,
              ),
            ],
            PaddingWidgetShowcaseOptionConfigurationEnum.symmetric => [
              _InputRow(
                leftLabel: 'Vertical',
                leftOnChanged: symmetricConfiguration!.verticalOnChanged,
                rightLabel: 'Horizontal',
                rightOnChanged: symmetricConfiguration.horizontalOnChanged,
              ),
            ],
          },
        ],
      ),
    );
  }
}

final class _InputRow extends StatelessWidget {
  final String leftLabel;
  final PaddingWidgetShowcaseOptionConfigurationOnChanged leftOnChanged;
  final String rightLabel;
  final PaddingWidgetShowcaseOptionConfigurationOnChanged rightOnChanged;

  const _InputRow({
    required this.leftLabel,
    required this.leftOnChanged,
    required this.rightLabel,
    required this.rightOnChanged,
  });

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<PaddingWidgetShowcaseOptionThemeExtension>();

    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.spacing,
      children: [
        Flexible(child: _Input(leftLabel, leftOnChanged)),
        Flexible(child: _Input(rightLabel, rightOnChanged)),
      ],
    );
  }
}

final class _Input extends StatelessWidget {
  final String _label;
  final PaddingWidgetShowcaseOptionConfigurationOnChanged _onChanged;

  const _Input(this._label, this._onChanged);

  @override
  Widget build(BuildContext context) {
    return MyoroInput.number(
      min: 0,
      max: 50,
      decimalPlaces: 2,
      configuration: MyoroInputConfiguration(
        label: _label,
        onChanged: (String text) => _onChanged(double.parse(text)),
      ),
    );
  }
}
