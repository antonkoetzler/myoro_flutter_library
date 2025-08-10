part of '../myoro_image_picker_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroImagePickerWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroImagePickerWidgetShowcaseScreenViewModel>();

    return MyoroImagePicker(
      configuration: MyoroImagePickerConfiguration(
        onChanged: (selectedImage) => viewModel.onChangedSnackBar(context, selectedImage),
      ),
    );
  }
}
