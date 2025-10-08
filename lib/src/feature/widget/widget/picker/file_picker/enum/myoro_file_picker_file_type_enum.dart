// Wrapper enum of the [FileType] enum of the file_picker package
import 'package:faker/faker.dart' hide Color;
import 'package:file_picker/file_picker.dart';

/// to not have to download that package within the project
enum MyoroFilePickerFileTypeEnum {
  /// [FileType.any]
  any,

  /// [FileType.media]
  media,

  /// [FileType.image]
  image,

  /// [FileType.video]
  video,

  /// [FileType.audio]
  audio,

  /// [FileType.custom]
  custom;

  factory MyoroFilePickerFileTypeEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// Convert to [FileType]
  FileType get filePickerValue {
    switch (this) {
      case MyoroFilePickerFileTypeEnum.any:
        return FileType.any;
      case MyoroFilePickerFileTypeEnum.media:
        return FileType.media;
      case MyoroFilePickerFileTypeEnum.image:
        return FileType.image;
      case MyoroFilePickerFileTypeEnum.video:
        return FileType.video;
      case MyoroFilePickerFileTypeEnum.audio:
        return FileType.audio;
      case MyoroFilePickerFileTypeEnum.custom:
        return FileType.custom;
    }
  }

  bool get isAny => this == any;
  bool get isMedia => this == media;
  bool get isImage => this == image;
  bool get isVideo => this == video;
  bool get isAudio => this == audio;
  bool get isCustom => this == custom;
}
