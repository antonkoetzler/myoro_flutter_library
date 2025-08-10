part of '../myoro_image_picker.dart';

/// Tappable overlay on top of the selected image region in [MyoroImagePicker].
final class _Overlay extends StatelessWidget {
  const _Overlay();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroImagePickerThemeExtension>();
    final overlayCursor = themeExtension.overlayCursor;

    final viewModel = context.read<MyoroImagePickerViewModel>();

    return MouseRegion(
      cursor: overlayCursor,
      child: GestureDetector(onTapUp: (_) => _SelectionTypeModal.show(context, viewModel)),
    );
  }
}
