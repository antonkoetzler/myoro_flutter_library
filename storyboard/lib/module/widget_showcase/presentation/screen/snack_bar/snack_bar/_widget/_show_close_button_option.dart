part of '../myoro_snack_bar_widget_showcase.dart';

/// [MyoroSnackBarConfiguration.showCloseButton] option of [MyoroSnackBarWidgetShowcase].
final class _ShowCloseButtonOption extends StatelessWidget {
  const _ShowCloseButtonOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSnackBarWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show close button?',
        onChanged: (value) => viewModel.state.showCloseButton = value,
      ),
    );
  }
}
