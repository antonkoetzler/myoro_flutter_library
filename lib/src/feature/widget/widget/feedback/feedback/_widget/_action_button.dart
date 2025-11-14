part of '../widget/myoro_feedback.dart';

/// Action button of [MyoroFeedback].
final class _ActionButton extends StatelessWidget {
  /// Default value of [actionButtonText].
  const _ActionButton(this._actionButtonText, this._actionButtonConfiguration);

  /// Action button text.
  final String _actionButtonText;

  /// Action button configuration.
  final MyoroFeedbackActionButtonConfiguration? _actionButtonConfiguration;

  @override
  Widget build(context) {
    final style = _actionButtonConfiguration?.style;
    final cursor = _actionButtonConfiguration?.cursor;
    final tooltipText = _actionButtonConfiguration?.tooltipText;
    final onTapDown = _actionButtonConfiguration?.onTapDown;
    final onTapUp = _actionButtonConfiguration?.onTapUp;
    final isLoading = _actionButtonConfiguration?.isLoading;
    final invert = _actionButtonConfiguration?.invert;
    final iconConfiguration = _actionButtonConfiguration?.iconConfiguration;
    final textConfiguration = _actionButtonConfiguration?.textConfiguration;

    return IntrinsicWidth(
      child: MyoroIconTextButton(
        style: style ?? MyoroIconTextButton.styleDefaultValue,
        cursor: cursor,
        tooltipText: tooltipText ?? MyoroIconTextButton.tooltipTextDefaultValue,
        onTapDown: onTapDown,
        onTapUp: onTapUp,
        isLoading: isLoading ?? MyoroIconTextButton.isLoadingDefaultValue,
        invert: invert ?? MyoroIconTextButton.invertDefaultValue,
        iconConfiguration: iconConfiguration,
        text: _actionButtonText,
        textConfiguration: textConfiguration,
      ),
    );
  }
}
