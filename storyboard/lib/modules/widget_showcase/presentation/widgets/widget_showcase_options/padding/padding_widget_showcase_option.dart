import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_all_selection.dart';
part '_widgets/_only_selection.dart';
part '_widgets/_selection.dart';
part '_widgets/_selection_input.dart';
part '_widgets/_selection_input_pair.dart';
part '_widgets/_selection_switcher.dart';
part '_widgets/_symmetric_selection.dart';
part '_widgets/_title.dart';

/// Widget showcase option for a [EdgeInsets] argument.
final class PaddingWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Padding';

  const PaddingWidgetShowcaseOption({super.key, required this.configuration});

  /// Configuration.
  final PaddingWidgetShowcaseOptionConfiguration configuration;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<PaddingWidgetShowcaseOptionThemeExtension>();

    return InheritedProvider(
      create: (_) => PaddingWidgetShowcaseOptionViewModel(configuration),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: themeExtension.spacing,
        children: const [_Title(), _Selection(), _SelectionSwitcher()],
      ),
    );
  }
}
