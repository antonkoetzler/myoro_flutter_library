part of '../myoro_pie_graph_widget_showcase.dart';

/// [MyoroPieGraphConfiguration.centerWidget] option of [MyoroPieGraphWidgetShowcase].
final class _CenterWidgetOption extends StatelessWidget {
  const _CenterWidgetOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroPieGraphWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Display center widget?',
        onChanged: (value) => viewModel.state.centerWidgetEnabled = value,
      ),
    );
  }
}
