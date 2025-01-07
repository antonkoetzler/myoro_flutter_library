import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum for the types of scrollables in [MyoroScrollable].
enum MyoroScrollableEnum {
  /// Simple content.
  ///
  /// Should be used for static lists or lists not containing lots of items.
  singleChildScrollView,

  /// Lazy loaded content (only renders items being displayed).
  ///
  /// Should be used for items containings lots of items.
  customScrollView;

  factory MyoroScrollableEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  bool get isSingleChildScrollView => this == singleChildScrollView;
  bool get isCustomScrollView => this == customScrollView;
}
