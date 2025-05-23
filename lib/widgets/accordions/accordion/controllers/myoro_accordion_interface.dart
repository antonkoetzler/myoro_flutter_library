import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Interface of [MyoroAccordion].
abstract interface class MyoroAccordionInterface {
  /// Dispose function.
  void dispose();

  /// Expands a [MyoroAccordionItem].
  void expandItem(MyoroAccordionItem item);

  /// Expanded [expandedItemController]'s value if it is not null.
  void reset();
}
