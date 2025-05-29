import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// On-changed callback of the [MyoroCheckbox] controlling if the option is enabled or not.
typedef IconWidgetShowcaseOptionCheckboxOnChanged = void Function(bool enabled, IconData icon, double? size);

/// On-changed callback of the [MyoroSingularDropdown] for selecting the [IconData].
typedef IconWidgetShowcaseOptionIconOnChanged = void Function(IconData icon);

/// On-changed callback of the [MyoroInput] for selecting the size of the [IconData].
typedef IconWidgetShowcaseOptionIconSizeOnChanged = void Function(double iconSize);
