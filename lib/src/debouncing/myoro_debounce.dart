import 'package:myoro_flutter_library/myoro_flutter_library.dart';

// TODO: Needs to be refactored

/// Function to debounce a function (apply a timer then execute [callback]).
Future<void> myoroDebounce(Function callback, [Duration? duration]) async {
  await Future.delayed(duration ?? kMyoroDebounceDuration);
  await callback.call();
}
