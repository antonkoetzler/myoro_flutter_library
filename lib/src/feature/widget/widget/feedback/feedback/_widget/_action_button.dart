part of '../myoro_feedback.dart';

/// Action button of [MyoroFeedback].
final class _ActionButton extends StatelessWidget {
  const _ActionButton();

  @override
  Widget build(context) {
    final configuration = context.read<MyoroFeedbackConfiguration>();
    final actionButtonConfiguration = configuration.actionButtonConfiguration!;
    final style = actionButtonConfiguration.style;
    final cursor = actionButtonConfiguration.cursor;
    final tooltipConfiguration = actionButtonConfiguration.tooltipConfiguration;
    final onTapDown = actionButtonConfiguration.onTapDown;
    final onTapUp = actionButtonConfiguration.onTapUp;
    final isLoading = actionButtonConfiguration.isLoading;
    final invert = actionButtonConfiguration.invert;
    final iconConfiguration = actionButtonConfiguration.iconConfiguration;
    final textConfiguration = actionButtonConfiguration.textConfiguration;

    return IntrinsicWidth(
      child: MyoroIconTextButton(
        style: style,
        cursor: cursor,
        tooltipConfiguration: tooltipConfiguration,
        onTapDown: onTapDown,
        onTapUp: onTapUp,
        isLoading: isLoading,
        invert: invert,
        iconConfiguration: iconConfiguration,
        textConfiguration: textConfiguration,
      ),
    );
  }
}
