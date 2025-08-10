part of '../myoro_image_picker_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroImagePickerWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroImagePickerWidgetShowcaseScreenThemeExtension>();
    final size = themeExtension.size;

    final viewModel = context.read<MyoroImagePickerWidgetShowcaseScreenViewModel>();
    final onChangedSnackBar = viewModel.onChangedSnackBar;

    return MyoroImagePicker(
      configuration: MyoroImagePickerConfiguration(
        size: size,
        onChanged: (selectedImage) => onChangedSnackBar(context, selectedImage),
      ),
    );
  }
}
