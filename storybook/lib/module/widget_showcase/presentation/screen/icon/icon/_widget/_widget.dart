part of '../myoro_icon_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroIconWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroIconWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final style = viewModel.style;

    return ListenableBuilder(
      listenable: state,
      builder: (_, _) {
        return Center(child: MyoroIcon(state.icon, style: style));
      },
    );
  }
}
