// Wrapper enum of the [FileType] enum of the file_picker package
import 'package:faker/faker.dart';
import 'package:file_picker/file_picker.dart';

/// to not have to download that package within the project
enum MyoroFilePickerFileTypeEnum {
  /// [FileType.any]
  any(FileType.any),

  /// [FileType.media]
  media(FileType.media),

  /// [FileType.image]
  image(FileType.image),

  /// [FileType.video]
  video(FileType.video),

  /// [FileType.audio]
  audio(FileType.audio),

  /// [FileType.custom]
  custom(FileType.custom);

  const MyoroFilePickerFileTypeEnum(this.filePickerValue);

  factory MyoroFilePickerFileTypeEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// [FileType]
  final FileType filePickerValue;

  bool get isAny => this == any;
  bool get isMedia => this == media;
  bool get isImage => this == image;
  bool get isVideo => this == video;
  bool get isAudio => this == audio;
  bool get isCustom => this == custom;
}
