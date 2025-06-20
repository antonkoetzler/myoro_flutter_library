part of '../myoro_pie_graph_widget_showcase_screen.dart';

/// [MyoroPieGraphConfiguration.centerWidget] option of [MyoroPieGraphWidgetShowcaseScreen].
final class _CenterWidgetOption extends StatelessWidget {
  const _CenterWidgetOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroPieGraphWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Display center widget?',
        onChanged: (value) => viewModel.state.centerWidgetEnabled = value,
      ),
    );
  }
}
