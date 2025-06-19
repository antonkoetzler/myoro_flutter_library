part of '../myoro_table_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroTableWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroTableWidgetShowcaseViewModel>();
    return MyoroTable<String>(configuration: viewModel.configuration(context));
  }
}
