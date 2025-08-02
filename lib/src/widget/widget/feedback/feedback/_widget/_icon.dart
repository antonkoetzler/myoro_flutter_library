part of '../myoro_feedback.dart';

/// Icon of [MyoroFeedback].
final class _Icon extends StatelessWidget {
  const _Icon();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFeedbackThemeExtension>();
    final configuration = context.read<MyoroFeedbackConfiguration>();
    final iconConfiguration = configuration.iconConfiguration;
    return Icon(iconConfiguration.icon, size: iconConfiguration.size ?? themeExtension.iconSize);
  }
}
