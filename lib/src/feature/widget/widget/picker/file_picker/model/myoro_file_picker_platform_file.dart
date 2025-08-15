import 'package:file_picker/file_picker.dart';

/// Wrapper model of [PlatformFile] so that the MFL user
/// doesn't need to download file_picker in their project.
class MyoroFilePickerPlatformFile extends PlatformFile {
  MyoroFilePickerPlatformFile({
    super.path,
    required super.name,
    required super.size,
    super.bytes,
    super.readStream,
    super.identifier,
  });

  factory MyoroFilePickerPlatformFile.fromPlatformFile(PlatformFile platformFile) {
    return MyoroFilePickerPlatformFile(
      path: platformFile.path,
      name: platformFile.name,
      size: platformFile.size,
      bytes: platformFile.bytes,
      readStream: platformFile.readStream,
      identifier: platformFile.identifier,
    );
  }
}
