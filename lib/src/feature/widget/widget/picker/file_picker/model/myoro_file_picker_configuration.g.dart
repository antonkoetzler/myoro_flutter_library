// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_file_picker_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroFilePickerConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroFilePickerConfiguration with _$MyoroFilePickerConfigurationMixin {}
/// ```
mixin _$MyoroFilePickerConfigurationMixin {
  MyoroFilePickerConfiguration get self => this as MyoroFilePickerConfiguration;

  MyoroFilePickerConfiguration copyWith({
    String? title,
    bool titleProvided = true,
    MyoroFilePickerFileTypeEnum? fileType,
    List<String>? allowedExtensions,
    void Function(MyoroFilePickerPlatformFile?)? onChanged,
  }) {
    return MyoroFilePickerConfiguration(
      title: titleProvided ? (title ?? self.title) : null,
      fileType: fileType ?? self.fileType,
      allowedExtensions: allowedExtensions ?? self.allowedExtensions,
      onChanged: onChanged ?? self.onChanged,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFilePickerConfiguration &&
        other.runtimeType == runtimeType &&
        other.title == self.title &&
        other.fileType == self.fileType &&
        other.allowedExtensions == self.allowedExtensions &&
        other.onChanged == self.onChanged;
  }

  @override
  int get hashCode {
    return Object.hash(self.title, self.fileType, self.allowedExtensions, self.onChanged);
  }

  @override
  String toString() =>
      'MyoroFilePickerConfiguration(\n'
      '  title: ${self.title},\n'
      '  fileType: ${self.fileType},\n'
      '  allowedExtensions: ${self.allowedExtensions},\n'
      '  onChanged: ${self.onChanged},\n'
      ');';
}
