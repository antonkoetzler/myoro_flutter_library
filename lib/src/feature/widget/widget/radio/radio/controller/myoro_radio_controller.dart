import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ValueNotifier] to manage the value of a [MyoroRadio].
class MyoroRadioController extends ValueNotifier<bool> {
  MyoroRadioController([bool? enabled]) : super(enabled ?? false);

  /// Toggles the [MyoroRadio].
  void toggle([bool? enabled]) => value = enabled ?? !value;

  /// Alias for [ValueNotifier.value].
  bool get enabled => value;
}
