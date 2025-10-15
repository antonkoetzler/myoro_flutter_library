part of '../myoro_dialog_modal_widget_showcase_screen.dart';

/// [MyoroDialogModalConfiguration.child] option of [MyoroDialogModalWidgetShowcaseScreen].
final class _ChildOption extends StatelessWidget {
  const _ChildOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show custom child widget instead of a dialog message?',
        onChanged: (value) => viewModel.state.child = const _ChildWidget(),
      ),
    );
  }
}
