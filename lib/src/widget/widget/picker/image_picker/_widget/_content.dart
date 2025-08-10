part of '../myoro_image_picker.dart';

/// Wrapper of the content of the [MyoroImagePicker].
///
/// Used to keep [MyoroImagePicker] a [StatelessWidget].
final class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroImagePickerViewModel>();
    final state = viewModel.state;
    final selectedImageNotifier = state.selectedImageNotifier;

    return Stack(
      children: [
        ValueListenableBuilder(
          valueListenable: selectedImageNotifier,
          builder: (_, selectedImage, _) {
            return selectedImage != null ? Image.file(File(selectedImage)) : const _UnselectedImageState();
          },
        ),
        const Positioned.fill(child: _Overlay()),
      ],
    );
  }
}
