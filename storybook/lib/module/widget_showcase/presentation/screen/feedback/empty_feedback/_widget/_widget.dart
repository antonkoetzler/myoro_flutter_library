part of '../myoro_empty_feedback_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroEmptyFeedbackWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    return Center(child: MyoroEmptyFeedback(title: 'No items found', onActionButtonTapped: () {}));
  }
}
