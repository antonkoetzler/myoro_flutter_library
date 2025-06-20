part of '../myoro_snack_bar_widget_showcase_screen.dart';

/// [MyoroSnackBarConfiguration.snackBarType] option of [MyoroSnackBarWidgetShowcaseScreen].
final class _SnackBarTypeOption extends StatelessWidget {
  const _SnackBarTypeOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSnackBarWidgetShowcaseScreenViewModel>();

    return MyoroSnackBarTypeWidgetShowcaseOption(
      initiallySelectedItem: viewModel.state.snackBarType,
      onChanged: (snackBarType) => viewModel.state.snackBarType = snackBarType!,
    );
  }
}
