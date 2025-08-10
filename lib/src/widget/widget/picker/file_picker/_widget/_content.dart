part of '../myoro_file_picker.dart';

/// Content wrapper of [MyoroFilePicker].
///
/// Used to keep [MyoroFilePicker] a [StatelessWidget].
final class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(_) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: _SelectedFile()),
        _PickerButton(),
      ],
    );
  }
}
