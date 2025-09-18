import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_action_button.dart';
part '_widget/_icon.dart';
part '_widget/_subtitle.dart';
part '_widget/_title.dart';

/// An a generic feedback [Widget].
final class MyoroFeedback extends StatelessWidget {
  const MyoroFeedback({super.key, required this.configuration, this.themeExtension});

  /// Configuration.
  final MyoroFeedbackConfiguration configuration;

  /// Style.
  final MyoroFeedbackThemeExtension? themeExtension;

  @override
  Widget build(context) {
    final textTheme = context.textTheme;
    final themeExtension = this.themeExtension ?? MyoroFeedbackThemeExtension.builder(textTheme);
    final spacing = themeExtension.spacing ?? themeExtension.spacing ?? 0;

    final subtitleConfiguration = configuration.subtitleConfiguration;
    final actionButtonConfiguration = configuration.actionButtonConfiguration;

    return MyoroSingularThemeExtensionWrapper(
      themeExtension: themeExtension,
      child: InheritedProvider.value(
        value: configuration,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Column(
                spacing: spacing,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [const _Icon(), const _Title(), if (subtitleConfiguration != null) const _Subtitle()],
                    ),
                  ),
                  if (actionButtonConfiguration != null) const _ActionButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
