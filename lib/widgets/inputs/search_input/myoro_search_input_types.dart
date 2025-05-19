part of 'myoro_search_input.dart';

/// Request to be executed when the input is triggered;
typedef MyoroSearchInputRequest<T> = FutureOr<Set<T>> Function(String text);
