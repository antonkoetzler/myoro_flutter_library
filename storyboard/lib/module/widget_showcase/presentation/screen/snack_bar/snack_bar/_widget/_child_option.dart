part of '../myoro_snack_bar_widget_showcase_screen.dart';

/// [MyoroSnackBarConfiguration.child] option of [MyoroSnackBarWidgetShowcaseScreen].
final class _ChildOption extends StatelessWidget {
  const _ChildOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSnackBarWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show custom widget instead of simple text?',
        onChanged: (value) => viewModel.state.childEnabled = value,
      ),
    );
  }
}
