import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_menu_item.g.dart';
part 'myoro_menu_button_item.dart';
part 'myoro_menu_icon_text_button_item.dart';

/// Model to build a menu item.
@immutable
sealed class MyoroMenuItem {
  const MyoroMenuItem();
}
