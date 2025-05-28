import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Interface of [MyoroCheckboxViewModel].
abstract interface class MyoroCheckboxViewModelInterface {
  /// Dispose function.
  void dispose();

  /// Toggles the checkbox value.
  void toggle([bool? enabled]);
}
