part of '../myoro_feedback_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroFeedbackWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroFeedbackWidgetShowcaseScreenViewModel>();

    return Center(
      child: ListenableBuilder(
        listenable: viewModel.state,
        builder: (_, _) => MyoroFeedback(configuration: viewModel.configuration),
      ),
    );
  }
}
