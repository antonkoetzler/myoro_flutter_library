import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Interface of [MyoroTable].
abstract interface class MyoroTableInterface {
  /// Dispose function.
  void dispose();

  /// Fetches the items of the [MyoroTable].
  void fetch();

  /// Populdates [_titleColumnKeyWidthsController].
  void getTitleColumnKeyWidths();
}
