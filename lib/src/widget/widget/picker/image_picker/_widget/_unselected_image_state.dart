part of '../myoro_image_picker.dart';

/// [Widget] displayed when there is no image selected in [MyoroImagePicker].
final class _UnselectedImageState extends StatelessWidget {
  const _UnselectedImageState();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroImagePickerThemeExtension>();
    final unselectedImageStateIcon = themeExtension.unselectedImageStateIcon;
    return Icon(unselectedImageStateIcon);
  }
}
