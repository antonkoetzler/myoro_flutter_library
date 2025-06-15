part of '../myoro_snack_bar_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroSnackBarWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSnackBarWidgetShowcaseViewModel>();
    return MyoroSnackBar(configuration: viewModel.configuration(const _Child()));
  }
}
