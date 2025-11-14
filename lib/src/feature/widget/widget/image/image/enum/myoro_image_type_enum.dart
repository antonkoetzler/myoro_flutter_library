import 'package:collection/collection.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum to encapsulate the different image types of [MyoroImage].
enum MyoroImageTypeEnum {
  /// PNG image.
  png,

  /// JPG image.
  jpg,

  /// JPEG image.
  jpeg,

  /// GIF image.
  gif,

  /// SVG image.
  svg;

  /// Try to parse the image type from the path.
  static MyoroImageTypeEnum? tryParse(String path) {
    return values.firstWhereOrNull((v) => v.name == path.toLowerCase());
  }
}
