// coverage:ignore-file

import 'dart:async';

/// Function that requests the data to be retrieved.
typedef MyoroRequestControllerRequest<T> = FutureOr<T?> Function();
