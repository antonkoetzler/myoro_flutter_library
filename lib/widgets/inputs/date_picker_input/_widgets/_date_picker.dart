part of '../myoro_date_picker_input.dart';

/// Native Flutter date picker [Widget].
final class _DatePicker extends StatelessWidget {
  const _DatePicker(this._child);

  /// [Widget] argument of [showDatePicker].
  final Widget _child;

  @override
  Widget build(BuildContext context) {
    final themeData = context.themeData;
    final colorScheme = context.colorScheme;

    return Theme(
      // Modifications to [ThemeData] as the date picker uses
      // colors directly from the [BuildContext]'s [ThemeData].
      data: themeData.copyWith(
        colorScheme: colorScheme.copyWith(primary: colorScheme.onPrimary, onPrimary: colorScheme.primary),
      ),
      child: _child,
    );
  }
}
