import 'dart:async';

/// Function executed to make the request.
typedef MyoroResolverRequest<T> = FutureOr<T> Function();

/// Function executed when the request is completed successfully.
typedef MyoroResolverOnSuccess<T> = void Function(T? result);

/// Function executed when the request is completed unsuccessfully.
typedef MyoroResolverOnError = void Function(String errorMessage);
