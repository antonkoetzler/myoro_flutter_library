import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [WidgetShowcase] option to add customized padding on all sides (top, bottom, left and right).
///
/// TODO: Needs to be tested.
final class PaddingWidgetShowcaseOption extends StatelessWidget {
  const PaddingWidgetShowcaseOption({super.key});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<PaddingWidgetShowcaseOptionThemeExtension>();
    EdgeInsets;

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.spacing,
      children: [
        you are also here
      ],
    );
  }
}
