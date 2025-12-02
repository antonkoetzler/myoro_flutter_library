import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroMenuItem] builder from a generic object.
typedef MyoroMenuItemBuilder<T> = MyoroMenuItem Function(int index, T item);
