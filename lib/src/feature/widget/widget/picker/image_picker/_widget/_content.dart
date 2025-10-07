part of '../myoro_image_picker.dart';

/// Wrapper of the content of the [MyoroImagePicker].
///
/// Used to keep [MyoroImagePicker] a [StatelessWidget].
final class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroImagePickerThemeExtension>();
    final style = context.watch<MyoroImagePickerStyle>();
    final size = style.size ?? themeExtension.size;
    final borderRadius = style.borderRadius ?? themeExtension.borderRadius ?? BorderRadius.zero;

    final viewModel = context.read<MyoroImagePickerViewModel>();
    final state = viewModel.state;
    final selectedImageNotifier = state.selectedImageNotifier;

    return SizedBox(
      width: size?.width,
      height: size?.height,
      child: ValueListenableBuilder(
        valueListenable: selectedImageNotifier,
        builder: (_, selectedImage, _) {
          final selectedImageIsNotNull = selectedImage != null;

          return ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: borderRadius,
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (selectedImageIsNotNull) ...[
                  Image.file(File(selectedImage), width: size?.width, height: size?.height, fit: BoxFit.cover),
                ],

                Positioned.fill(child: _Overlay(selectedImageIsNotNull)),
              ],
            ),
          );
        },
      ),
    );
  }
}
