import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ValueNotifier] to manage the value of a [MyoroRadio].
final class MyoroRadioNotifier extends ValueNotifier<bool> {
  MyoroRadioNotifier([bool? enabled]) : super(enabled ?? false);

  /// Toggles the [MyoroRadio].
  void toggle([bool? enabled]) => value = enabled ?? !value;

  /// Alias for [ValueNotifier.value].
  bool get enabled => value;
}
