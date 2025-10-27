part of '../myoro_snack_bar_widget_showcase_screen.dart';

/// [MyoroSnackBarConfiguration.child] option of [MyoroSnackBarWidgetShowcaseScreen].
final class _ChildOption extends StatelessWidget {
  const _ChildOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSnackBarWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(
      label: 'Show custom widget instead of simple text?',
      onChanged: (value) => state.childEnabled = value,
    );
  }
}
