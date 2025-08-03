import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_action_button.dart';
part '_widget/_icon.dart';
part '_widget/_subtitle.dart';
part '_widget/_title.dart';

/// An a generic feedback [Widget].
///
/// TODO: Needs to be tested.
final class MyoroFeedback extends StatelessWidget {
  const MyoroFeedback({super.key, required this.configuration});

  /// Configuration.
  final MyoroFeedbackConfiguration configuration;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFeedbackThemeExtension>();

    return InheritedProvider.value(
      value: configuration,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Column(
              spacing: themeExtension.spacing,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const _Icon(),
                      const _Title(),
                      if (configuration.subtitleConfiguration != null) const _Subtitle(),
                    ],
                  ),
                ),
                if (configuration.actionButtonConfiguration != null) const _ActionButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
