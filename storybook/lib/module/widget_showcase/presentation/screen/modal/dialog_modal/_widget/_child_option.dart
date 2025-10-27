part of '../myoro_dialog_modal_widget_showcase_screen.dart';

/// [MyoroDialogModalConfiguration.child] option of [MyoroDialogModalWidgetShowcaseScreen].
final class _ChildOption extends StatelessWidget {
  const _ChildOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(
      label: 'Show custom child widget instead of a dialog message?',
      onChanged: (value) => state.child = const _ChildWidget(),
    );
  }
}
