import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [Widget] builder of the [MyoroButton].
typedef MyoroButtonBuilder = Widget Function(BuildContext context, MyoroTapStatusEnum tapStatusEnum);

/// Builder of [MyoroButton]'s background color.
typedef MyoroButtonBackgroundColorBuilder = Color Function(MyoroTapStatusEnum tapStatusEnum);

/// Builder of the [MyoroButton]'s border.
typedef MyoroButtonBorderBuilder = Border? Function(MyoroTapStatusEnum tapStatusEnum);

/// Function executed when the [MyoroButton] is tapped.
typedef MyoroButtonOnTapDown = void Function(TapDownDetails details);

/// Function executed when the [MyoroButton] is released being tapped.
///
/// Will not executed if the tap when held down, then dragged to another location.
/// The tap must be released while still focused on the [MyoroButton].
typedef MyoroButtonOnTapUp = void Function(TapUpDetails details);
