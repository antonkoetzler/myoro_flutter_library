part of '../myoro_date_picker_input.dart';

/// Clickable area to launch the date picker modal.
final class _TriggerArea extends StatelessWidget {
  const _TriggerArea();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDatePickerInputViewModel>();
    final configuration = viewModel.state.configuration;
    final inputController = viewModel.state.inputController;

    return ListenableBuilder(
      listenable: inputController,
      builder: (_, _) {
        return Padding(
          padding: EdgeInsets.only(
            right: (configuration.controller?.text.isNotEmpty ?? false) && (configuration.showClearTextButton) ? 40 : 0,
          ),
          child: InkWell(
            focusColor: MyoroColors.transparent,
            hoverColor: MyoroColors.transparent,
            splashColor: MyoroColors.transparent,
            highlightColor: MyoroColors.transparent,
            onTap: () => viewModel.openDatePicker(context, (child) => _DatePicker(child!)),
            child: MyoroLayoutBuilder(
              builder: (_, BoxConstraints constraints) {
                return SizedBox(
                  height: 43.1, // Height of the input.
                  width: constraints.maxWidth - (configuration.checkboxOnChanged != null ? 30 : 0),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
