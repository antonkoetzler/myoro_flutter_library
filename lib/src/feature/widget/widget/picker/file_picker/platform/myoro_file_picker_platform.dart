import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Platform-specific file picker implementation
abstract class MyoroFilePickerPlatform {
  /// Pick files using platform-specific implementation
  Future<MyoroFilePickerResult?> pickFiles({
    required String dialogTitle,
    required MyoroFilePickerFileTypeEnum fileType,
    List<String>? allowedExtensions,
  });
}

/// File picker result
class MyoroFilePickerResult {
  const MyoroFilePickerResult({required this.files});

  final List<MyoroFilePickerPlatformFile> files;
}
