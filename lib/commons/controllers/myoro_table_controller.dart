import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller that manages these external controls in [MyoroTable]:
/// 1. Refreshing;
/// 2. Applying pagination actions;
/// 3. Applying filters;
/// 4. Managing checked components with a [MyoroTable] that has checkbox functionality.
final class MyoroTableController {
  late MyoroResolverController resolverController;

  /// Refreshes the items with the same current conditions.
  void refresh() => resolverController.refresh();
}
