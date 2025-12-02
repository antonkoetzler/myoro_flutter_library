import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Error feedback variant of [MyoroFeedback].
class MyoroErrorFeedback extends StatelessWidget {
  /// Default value of the show icon argument.
  static const showIconDefaultValue = true;

  /// Default value of [subtitle].
  static const subtitleDefaultValue = kMyoroEmptyString;

  /// Default constructor.
  const MyoroErrorFeedback({
    super.key,
    this.showIcon = showIconDefaultValue,
    required this.title,
    this.subtitle = subtitleDefaultValue,
    required this.onRetry,
  });

  /// Show icon.
  final bool showIcon;

  /// Title.
  final String title;

  /// Subtitle.
  final String subtitle;

  /// On retry.
  final void Function(BuildContext) onRetry;

  /// Build function.
  @override
  Widget build(context) {
    final localization = context.mflLocalization;
    final myoroErrorFeedbackSubtitle = localization.myoroErrorFeedbackSubtitle;
    final myoroErrorFeedbackActionButtonText = localization.myoroErrorFeedbackActionButtonText;

    return MyoroFeedback(
      icon: showIcon ? Icons.error : null,
      title: title,
      subtitle: subtitle.isNotEmpty ? subtitle : myoroErrorFeedbackSubtitle,
      actionButtonText: myoroErrorFeedbackActionButtonText,
      actionButtonConfiguration: MyoroFeedbackActionButtonConfiguration(onTapUp: (context, _) => onRetry(context)),
    );
  }
}
