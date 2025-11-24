part of '../myoro_tag_widget_showcase_screen.dart';

/// [Widget] of [MyoroTagWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTagWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final style = viewModel.style;

    return ListenableBuilder(
      listenable: state,
      builder: (_, _) {
        return Center(child: MyoroTag(style: style, invert: state.invert, icon: state.icon, text: state.text));
      },
    );
  }
}
