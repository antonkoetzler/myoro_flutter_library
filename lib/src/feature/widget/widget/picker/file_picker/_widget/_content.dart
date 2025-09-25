part of '../myoro_file_picker.dart';

/// Content wrapper of [MyoroFilePicker].
///
/// Used to keep [MyoroFilePicker] a [StatelessWidget].
final class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFilePickerThemeExtension>();
    final style = context.read<MyoroFilePickerStyle>();
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;

    return Row(
      spacing: spacing,
      mainAxisSize: MainAxisSize.min,
      children: const [
        Flexible(child: _SelectedFile()),
        _PickerButton(),
      ],
    );
  }
}
