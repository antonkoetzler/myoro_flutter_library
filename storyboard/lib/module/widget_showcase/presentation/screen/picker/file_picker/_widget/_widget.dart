part of '../myoro_file_picker_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroFilePickerWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroFilePickerWidgetShowcaseScreenViewModel>();
    final onChanged = viewModel.onChanged;

    return MyoroFilePicker(
      configuration: MyoroFilePickerConfiguration(
        title: 'I\'m a silly snake >w<',
        fileType: MyoroFilePickerFileTypeEnum.any,
        onChanged: (f) => onChanged(context, f),
      ),
    );
  }
}
