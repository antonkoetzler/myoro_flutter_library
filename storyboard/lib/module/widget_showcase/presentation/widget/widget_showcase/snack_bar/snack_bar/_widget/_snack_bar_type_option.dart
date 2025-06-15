part of '../myoro_snack_bar_widget_showcase.dart';

/// [MyoroSnackBarConfiguration.snackBarType] option of [MyoroSnackBarWidgetShowcase].
final class _SnackBarTypeOption extends StatelessWidget {
  const _SnackBarTypeOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSnackBarWidgetShowcaseViewModel>();

    return MyoroSnackBarTypeWidgetShowcaseOption(
      initiallySelectedItem: viewModel.state.snackBarType,
      onChanged: (snackBarType) => viewModel.state.snackBarType = snackBarType!,
    );
  }
}
