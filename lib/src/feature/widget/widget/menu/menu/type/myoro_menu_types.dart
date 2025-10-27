import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroMenuItem] builder from a generic object.
typedef MyoroMenuItemBuilder<T> = MyoroMenuItem Function(T item);

/// Callback that is executed when the search bar is triggered.
typedef MyoroMenuSearchCallback<T> = void Function(String query);
