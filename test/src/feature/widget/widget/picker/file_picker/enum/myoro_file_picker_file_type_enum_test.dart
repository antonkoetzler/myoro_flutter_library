import 'package:file_picker/file_picker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroFilePickerFileTypeEnum.filePickerValue', () {
    expect(MyoroFilePickerFileTypeEnum.any.filePickerValue, FileType.any);
    expect(MyoroFilePickerFileTypeEnum.media.filePickerValue, FileType.media);
    expect(MyoroFilePickerFileTypeEnum.image.filePickerValue, FileType.image);
    expect(MyoroFilePickerFileTypeEnum.video.filePickerValue, FileType.video);
    expect(MyoroFilePickerFileTypeEnum.audio.filePickerValue, FileType.audio);
    expect(MyoroFilePickerFileTypeEnum.custom.filePickerValue, FileType.custom);
  });

  test('MyoroFilePickerFileTypeEnum getters', () {
    expect(MyoroFilePickerFileTypeEnum.any.isAny, isTrue);
    expect(MyoroFilePickerFileTypeEnum.media.isMedia, isTrue);
    expect(MyoroFilePickerFileTypeEnum.image.isImage, isTrue);
    expect(MyoroFilePickerFileTypeEnum.video.isVideo, isTrue);
    expect(MyoroFilePickerFileTypeEnum.audio.isAudio, isTrue);
    expect(MyoroFilePickerFileTypeEnum.custom.isCustom, isTrue);
  });
}
