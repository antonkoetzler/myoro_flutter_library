part of '../myoro_pie_graph_widget_showcase_screen.dart';

/// [MyoroPieGraphConfiguration.centerWidget] option of [MyoroPieGraphWidgetShowcaseScreen].
final class _CenterWidgetOption extends StatelessWidget {
  const _CenterWidgetOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroPieGraphWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(label: 'Display center widget?', onChanged: (value) => state.centerWidgetEnabled = value);
  }
}
