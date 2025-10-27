part of '../widget/myoro_feedback.dart';

/// Action button of [MyoroFeedback].
final class _ActionButton extends StatelessWidget {
  const _ActionButton(this._actionButtonConfiguration);

  final MyoroFeedbackActionButtonConfiguration _actionButtonConfiguration;

  @override
  Widget build(context) {
    final style = _actionButtonConfiguration.style;
    final cursor = _actionButtonConfiguration.cursor;
    final tooltipText = _actionButtonConfiguration.tooltipText;
    final onTapDown = _actionButtonConfiguration.onTapDown;
    final onTapUp = _actionButtonConfiguration.onTapUp;
    final isLoading = _actionButtonConfiguration.isLoading;
    final invert = _actionButtonConfiguration.invert;
    final iconConfiguration = _actionButtonConfiguration.iconConfiguration;
    final textConfiguration = _actionButtonConfiguration.textConfiguration;

    return IntrinsicWidth(
      child: MyoroIconTextButton(
        style: style,
        cursor: cursor,
        tooltipText: tooltipText,
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
