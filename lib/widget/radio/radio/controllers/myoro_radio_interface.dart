import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Interface of [MyoroRadioInterface].
abstract interface class MyoroRadioInterface {
  /// Toggles the [MyoroRadio].
  void toggle([bool? enabled]);

  /// Alias for [ValueNotifier.value].
  bool get enabled;
}
