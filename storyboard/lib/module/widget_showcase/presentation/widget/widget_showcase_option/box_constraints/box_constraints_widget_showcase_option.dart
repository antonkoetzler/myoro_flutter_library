import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_selector.dart';
part '_widget/_selector_row.dart';

/// Widget showcase option to select a [BoxConstraints].
final class BoxConstraintsWidgetShowcaseOption extends StatefulWidget {
  static const labelDefaultValue = 'Constraints';

  const BoxConstraintsWidgetShowcaseOption({super.key, this.label = labelDefaultValue, required this.onChanged});

  /// Label of the [BoxConstraintsWidgetShowcaseOption].
  final String label;

  /// Function executed when the generated [BoxConstraints] change.
  final BoxConstraintsWidgetShowcaseOptionOnChanged onChanged;

  @override
  State<BoxConstraintsWidgetShowcaseOption> createState() => _BoxConstraintsWidgetShowcaseOptionState();
}

final class _BoxConstraintsWidgetShowcaseOptionState extends State<BoxConstraintsWidgetShowcaseOption> {
  String get _label => widget.label;

  late final _viewModel = BoxConstraintsWidgetShowcaseOptionViewModel(widget.onChanged);

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return InheritedProvider.value(
      value: _viewModel,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: widgetShowcaseThemeExtension.spacing,
        children: [
          Text(_label, style: widgetShowcaseThemeExtension.labelTextStyle),
          _SelectorRow(
            leftLabel: 'Min Height',
            leftController: _viewModel.minHeightController,
            rightLabel: 'Max Height',
            rightController: _viewModel.maxHeightController,
          ),
          _SelectorRow(
            leftLabel: 'Min Width',
            leftController: _viewModel.minWidthController,
            rightLabel: 'Max Width',
            rightController: _viewModel.maxWidthController,
          ),
        ],
      ),
    );
  }
}
