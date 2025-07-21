import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_selector.dart';
part '_widget/_selector_row.dart';

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
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

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
              controller: _viewModel.minHeightController,
            ),
            rightConfiguration: BoxConstraintsWidgetShowcaseOptionSelectorConfiguration(
              label: 'Max Height',
              controller: _viewModel.maxHeightController,
            ),
          ),
          _SelectorRow(
            leftConfiguration: BoxConstraintsWidgetShowcaseOptionSelectorConfiguration(
              label: 'Min Width',
              controller: _viewModel.minWidthController,
            ),
            rightConfiguration: BoxConstraintsWidgetShowcaseOptionSelectorConfiguration(
              label: 'Max Width',
              controller: _viewModel.maxWidthController,
            ),
          ),
        ],
      ),
    );
  }
}
