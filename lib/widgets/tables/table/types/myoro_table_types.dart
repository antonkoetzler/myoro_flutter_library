import 'dart:async';

import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Request of the items of the [MyoroTable].
typedef MyoroTableConfigurationRequest<T> = FutureOr<Set<T>> Function();

/// Builder of the cells of a row.
typedef MyoroTableConfigurationRowBuilder<T> = MyoroTableRow<T> Function(T item);

/// Tap event of a [MyoroTableRow].
///
/// [item] corresponds to the [T] that was used to construct the given [MyoroTableRow].
typedef MyoroTableRowTapEvent<T> = void Function(T item);
