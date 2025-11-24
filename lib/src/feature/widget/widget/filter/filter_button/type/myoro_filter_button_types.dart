import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Item builder for [MyoroCheckboxFilterButton].
typedef MyoroCheckboxFilterButtonItemBuilder<T> = MyoroMenuCheckboxItem Function(int index, T value);

/// Item builder for [MyoroRadioFilterButton].
typedef MyoroRadioFilterButtonItemBuilder<T> = MyoroMenuRadioItem Function(int index, T value);

/// On changed on [MyoroCheckboxFilterButton].
typedef MyoroCheckboxFilterButtonOnChanged<T> = ValueChanged<Set<T>>;

/// On changed on [MyoroRadioFilterButton].
typedef MyoroRadioFilterButtonOnChanged<T> = ValueChanged<T?>;

/// Item label builder for filter buttons.
typedef MyoroFilterButtonItemLabelBuilder<T> = String Function(T value);
