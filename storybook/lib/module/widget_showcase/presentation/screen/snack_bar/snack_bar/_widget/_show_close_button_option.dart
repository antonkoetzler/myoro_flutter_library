part of '../myoro_snack_bar_widget_showcase_screen.dart';

/// [MyoroSnackBarConfiguration.showCloseButton] option of [MyoroSnackBarWidgetShowcaseScreen].
final class _ShowCloseButtonOption extends StatelessWidget {
  const _ShowCloseButtonOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSnackBarWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(label: 'Show close button?', onChanged: (value) => state.showCloseButton = value);
  }
}
