part of '../myoro_snack_bar_widget_showcase.dart';

/// [MyoroSnackBarConfiguration.child] option of [MyoroSnackBarWidgetShowcase].
final class _ChildOption extends StatelessWidget {
  const _ChildOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSnackBarWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show custom widget instead of simple text?',
        onChanged: (value) => viewModel.state.childEnabled = value,
      ),
    );
  }
}
