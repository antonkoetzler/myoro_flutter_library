part of '../myoro_snack_bar_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroSnackBarWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSnackBarWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return MyoroSnackBar(
      snackBarType: state.snackBarType,
      showCloseButton: state.showCloseButton,
      message: state.message,
      child: state.childEnabled ? const _Child() : null,
    );
  }
}
