part of '../myoro_date_picker_input.dart';

/// Clickable area to launch the date picker modal.
final class _TriggerArea extends StatelessWidget {
  final MyoroInputConfiguration _configuration;

  const _TriggerArea(this._configuration);

  void _openDatePicker(BuildContext context) async {
    final ThemeData themeData = context.themeData;
    final ColorScheme colorScheme = context.colorScheme;

    final DateTime? date = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 500)),
      builder: (_, Widget? child) {
        return Theme(
          // Modifications to [ThemeData] as the date picker uses
          // colors directly from the [BuildContext]'s [ThemeData].
          data: themeData.copyWith(
            colorScheme: colorScheme.copyWith(primary: colorScheme.onPrimary, onPrimary: colorScheme.primary),
          ),
          child: child!,
        );
      },
    );
    if (date == null) return;
    _configuration.controller!.text = DateFormat('dd/MM/yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _configuration.controller!,
      builder: (_, __) {
        return Padding(
          padding: EdgeInsets.only(
            right: _configuration.controller!.text.isNotEmpty && (_configuration.showClearTextButton ?? true) ? 40 : 0,
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
                  width: constraints.maxWidth - (_configuration.checkboxOnChanged != null ? 30 : 0),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
