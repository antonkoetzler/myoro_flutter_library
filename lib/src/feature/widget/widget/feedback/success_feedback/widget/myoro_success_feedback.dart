import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Success feedback variant of [MyoroFeedback].
final class MyoroSuccessFeedback extends StatelessWidget {
  /// Default value of [subtitle].
  static const subtitleDefaultValue = kMyoroEmptyString;

  /// Default constructor.
  const MyoroSuccessFeedback({
    super.key,
    required this.title,
    this.subtitle = subtitleDefaultValue,
    required this.onFinishButtonTapped,
  });

  /// Title.
  final String title;

  /// Subtitle.
  final String subtitle;

  /// On finish button tapped.
  final VoidCallback onFinishButtonTapped;

  /// Build function.
  @override
  Widget build(context) {
    final localization = context.mflLocalization;
    final myoroSuccessFeedbackSubtitle = localization.myoroSuccessFeedbackSubtitle;
    final myoroSuccessFeedbackActionButtonText = localization.myoroSuccessFeedbackActionButtonText;

    return MyoroFeedback(
      icon: Icons.check,
      title: title,
      subtitle: subtitle.isNotEmpty ? subtitle : myoroSuccessFeedbackSubtitle,
      actionButtonText: myoroSuccessFeedbackActionButtonText,
      actionButtonConfiguration: MyoroFeedbackActionButtonConfiguration(onTapUp: (_, _) => onFinishButtonTapped()),
    );
  }
}
