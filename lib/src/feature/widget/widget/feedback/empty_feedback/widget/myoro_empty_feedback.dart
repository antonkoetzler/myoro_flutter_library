import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Empty feedback variant of [MyoroFeedback].
final class MyoroEmptyFeedback extends StatelessWidget {
  /// Default value of [subtitle].
  static const subtitleDefaultValue = kMyoroEmptyString;

  /// Default constructor.
  const MyoroEmptyFeedback({
    super.key,
    required this.title,
    this.subtitle = subtitleDefaultValue,
    this.onActionButtonTapped,
  });

  /// Title.
  final String title;

  /// Subtitle.
  final String subtitle;

  /// On action button tapped.
  final VoidCallback? onActionButtonTapped;

  /// Build function.
  @override
  Widget build(context) {
    final localization = context.mflLocalization;
    final myoroEmptyFeedbackActionButtonText = localization.myoroEmptyFeedbackActionButtonText;

    return MyoroFeedback(
      icon: Icons.hourglass_empty,
      title: title,
      subtitle: subtitle,
      actionButtonText: onActionButtonTapped != null ? myoroEmptyFeedbackActionButtonText : kMyoroEmptyString,
      actionButtonConfiguration: onActionButtonTapped != null
          ? MyoroFeedbackActionButtonConfiguration(onTapUp: (_, _) => onActionButtonTapped!())
          : null,
    );
  }
}
