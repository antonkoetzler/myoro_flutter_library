import 'dart:async';

/// Request to be executed when the input is triggered;
typedef MyoroSearchInputRequest<T> = FutureOr<Set<T>> Function(String text);
