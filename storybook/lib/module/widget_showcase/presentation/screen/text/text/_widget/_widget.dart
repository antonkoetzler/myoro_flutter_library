part of '../myoro_text_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroTextWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTextWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final style = viewModel.style;

    return ListenableBuilder(
      listenable: state,
      builder: (_, _) {
        return Center(child: MyoroText(state.text, style: style));
      },
    );
  }
}
