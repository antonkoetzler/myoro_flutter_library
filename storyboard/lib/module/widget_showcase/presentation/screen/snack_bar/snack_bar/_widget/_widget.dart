part of '../myoro_snack_bar_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroSnackBarWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSnackBarWidgetShowcaseScreenViewModel>();
    return MyoroSnackBar(configuration: viewModel.configuration(const _Child()));
  }
}
