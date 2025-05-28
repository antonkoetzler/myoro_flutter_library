import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ValueNotifier] to manage the value of a [MyoroRadio].
class MyoroRadioController extends ValueNotifier<bool> implements MyoroRadioInterface {
  MyoroRadioController([bool? enabled]) : super(enabled ?? false);

  @override
  void toggle([bool? enabled]) => value = enabled ?? !value;

  @override
  bool get enabled => value;
}
