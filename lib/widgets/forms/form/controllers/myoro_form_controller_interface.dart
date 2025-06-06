import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Interface of [MyoroFormController].
abstract interface class MyoroFormControllerInterface {
  /// Starts the form process.
  Future<void> fetch();

  /// [MyoroFormController] listener.
  void listener();
}
