part of '../myoro_date_picker_input.dart';

/// Clickable area to launch the date picker modal.
final class _TriggerArea extends StatelessWidget {
  const _TriggerArea(this._controller);

  final MyoroDatePickerInputController _controller;

  void _openDatePicker(BuildContext context) async {
    final DateTime? date = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 500)),
      builder: (_, Widget? child) => _DatePicker(child!),
    );
    if (date == null) return;
    _controller.inputController.text = DateFormat('dd/MM/yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    final configuration = _controller.configuration;
    final inputController = _controller.inputController;

    return ListenableBuilder(
      listenable: inputController,
      builder: (_, _) {
        return Padding(
          padding: EdgeInsets.only(
            right: configuration.controller!.text.isNotEmpty && (configuration.showClearTextButton) ? 40 : 0,
          ),
          child: InkWell(
            focusColor: MyoroColorDesignSystem.transparent,
            hoverColor: MyoroColorDesignSystem.transparent,
            splashColor: MyoroColorDesignSystem.transparent,
            highlightColor: MyoroColorDesignSystem.transparent,
            onTap: () => _openDatePicker(context),
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
