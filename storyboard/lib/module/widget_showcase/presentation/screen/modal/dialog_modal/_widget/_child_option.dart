part of '../myoro_dialog_modal_widget_showcase.dart';

/// [MyoroDialogModalConfiguration.child] option of [MyoroDialogModalWidgetShowcase].
final class _ChildOption extends StatelessWidget {
  const _ChildOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show custom child widget instead of a dialog message?',
        onChanged: (value) => viewModel.state.child = const _ChildWidget(),
      ),
    );
  }
}
