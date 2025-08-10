part of '../myoro_image_picker.dart';

/// Tappable overlay on top of the selected image region in [MyoroImagePicker].
final class _Overlay extends StatelessWidget {
  const _Overlay(this._selectedImageIsNotNull);

  final bool _selectedImageIsNotNull;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroImagePickerThemeExtension>();
    final overlayCursor = themeExtension.overlayCursor;
    final overlayBackgroundColorBuilder = themeExtension.overlayBackgroundColorBuilder;
    final overlayUnselectedImageStateIconConfiguration = themeExtension.overlayUnselectedImageStateIconConfiguration;

    final viewModel = context.read<MyoroImagePickerViewModel>();
    final openPickerAndUpdateSelectedImage = viewModel.openPickerAndUpdateSelectedImage;

    // return MouseRegion(
    //   cursor: overlayCursor,
    //   child: GestureDetector(
    //     onTapUp: (_) => MyoroPlatformHelper.isMobile
    //         ? _SelectionTypeModal.show(context, viewModel)
    //         : openPickerAndUpdateSelectedImage(),
    //   ),
    // );
    return MyoroButton(
      configuration: MyoroButtonConfiguration(
        cursor: overlayCursor,
        backgroundColorBuilder: overlayBackgroundColorBuilder,
        onTapUp: (_) => MyoroPlatformHelper.isMobile
            ? _SelectionTypeModal.show(context, viewModel)
            : openPickerAndUpdateSelectedImage(),
      ),
      builder: (_, _) => _selectedImageIsNotNull
          ? const SizedBox.shrink()
          : Icon(
              overlayUnselectedImageStateIconConfiguration.icon,
              size: overlayUnselectedImageStateIconConfiguration.size,
            ),
    );
  }
}
