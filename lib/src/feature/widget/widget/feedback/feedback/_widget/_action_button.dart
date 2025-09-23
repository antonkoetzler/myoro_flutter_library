part of '../myoro_feedback.dart';

/// Action button of [MyoroFeedback].
final class _ActionButton extends StatelessWidget {
  const _ActionButton();

  @override
  Widget build(context) {
    final configuration = context.read<MyoroFeedbackConfiguration>();
    return IntrinsicWidth(child: MyoroIconTextButton(configuration: configuration.actionButtonConfiguration!));
  }
}
