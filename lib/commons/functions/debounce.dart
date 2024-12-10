import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to debounce a function (apply a timer then execute [callback]).
Future<void> debounce(Function callback, [Duration? duration]) async {
  await Future.delayed(duration ?? kMyoroDebounceDuration);
  await callback.call();
}
