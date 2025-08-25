import 'dart:async';

/// Function that requests the data to be retrieved.
typedef MyoroRequestNotifierRequest<T> = FutureOr<T?> Function();
