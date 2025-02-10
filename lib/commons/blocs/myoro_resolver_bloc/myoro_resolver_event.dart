part of 'myoro_resolver_bloc.dart';

@immutable
sealed class MyoroResolverEvent {
  const MyoroResolverEvent();
}

/// Event to execute the request.
final class ExecuteRequestEvent extends MyoroResolverEvent {
  const ExecuteRequestEvent();
}
