import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [Widget] builder of the [MyoroButton].
typedef MyoroButtonBuilder = Widget Function(BuildContext context, MyoroGestureStatusEnum tapStatusEnum);

/// Builder of [MyoroButton]'s background color.
typedef MyoroButtonConfigurationBackgroundColorBuilder = Color Function(MyoroGestureStatusEnum tapStatusEnum);

/// Builder of the [MyoroButton]'s border.
typedef MyoroButtonConfigurationBorderBuilder = BoxBorder Function(MyoroGestureStatusEnum tapStatusEnum);

/// Function executed when the [MyoroButton] is tapped.
typedef MyoroButtonConfigurationOnTapDown = void Function(TapDownDetails details);

/// Function executed when the [MyoroButton] is released being tapped.
///
/// Will not executed if the tap when held down, then dragged to another location.
/// The tap must be released while still focused on the [MyoroButton].
typedef MyoroButtonConfigurationOnTapUp = void Function(TapUpDetails details);
