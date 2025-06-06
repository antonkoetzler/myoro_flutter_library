import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_selector.dart';
part '_widgets/_selector_row.dart';

/// Widget showcase option to select a [BoxConstraints].
final class BoxConstraintsWidgetShowcaseOption extends StatefulWidget {
  const BoxConstraintsWidgetShowcaseOption({super.key, required this.configuration});

  /// Configuration.
  final BoxConstraintsWidgetShowcaseOptionConfiguration configuration;

  @override
  State<BoxConstraintsWidgetShowcaseOption> createState() => _BoxConstraintsWidgetShowcaseOptionState();
}

final class _BoxConstraintsWidgetShowcaseOptionState extends State<BoxConstraintsWidgetShowcaseOption> {
  late final _viewModel = BoxConstraintsWidgetShowcaseOptionViewModel(widget.configuration);

  @override
  Widget build(BuildContext context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseOptionThemeExtension>();

    return InheritedProvider.value(
      value: _viewModel,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: widgetShowcaseThemeExtension.spacing,
        children: [
          Text(_viewModel.configuration.label, style: widgetShowcaseThemeExtension.labelTextStyle),
          _SelectorRow(
            leftConfiguration: BoxConstraintsWidgetShowcaseOptionSelectorConfiguration(
              label: 'Min Height',
              checkboxOnChanged: _viewModel.onMinHeightCheckboxOnChanged,
              onChanged: _viewModel.onMinHeightOnChanged,
            ),
            rightConfiguration: BoxConstraintsWidgetShowcaseOptionSelectorConfiguration(
              label: 'Max Height',
              checkboxOnChanged: (enabled) => _viewModel.onMaxHeightCheckboxOnChanged,
              onChanged: _viewModel.onMaxHeightOnChanged,
            ),
          ),
          _SelectorRow(
            leftConfiguration: BoxConstraintsWidgetShowcaseOptionSelectorConfiguration(
              label: 'Min Width',
              checkboxOnChanged: _viewModel.onMinWidthCheckboxOnChanged,
              onChanged: _viewModel.onMinWidthOnChanged,
            ),
            rightConfiguration: BoxConstraintsWidgetShowcaseOptionSelectorConfiguration(
              label: 'Max Width',
              checkboxOnChanged: _viewModel.onMaxWidthCheckboxOnChanged,
              onChanged: _viewModel.onMaxWidthOnChanged,
            ),
          ),
        ],
      ),
    );
  }
}
