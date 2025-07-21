part of '../myoro_table_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroTableWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTableWidgetShowcaseScreenViewModel>();
    return MyoroTable<String>(configuration: viewModel.configuration(context));
  }
}
