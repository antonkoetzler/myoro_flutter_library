import 'package:flutter/services.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Abstract class of a formatter of [MyoroInput].
abstract interface class MyoroInputFormatter extends TextInputFormatter {
  /// Initial/empty case of the formatter.
  String get initialText;
}
