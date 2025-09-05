part of '../myoro_feedback.dart';

/// Icon of [MyoroFeedback].
final class _Icon extends StatelessWidget {
  const _Icon();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFeedbackThemeExtension>();
    final style = context.read<MyoroFeedbackStyle>();
    final configuration = context.read<MyoroFeedbackConfiguration>();
    final iconConfiguration = configuration.iconConfiguration;
    final iconSize = iconConfiguration.size ?? style.iconSize ?? themeExtension.iconSize;
    return Icon(iconConfiguration.icon, size: iconSize);
  }
}
