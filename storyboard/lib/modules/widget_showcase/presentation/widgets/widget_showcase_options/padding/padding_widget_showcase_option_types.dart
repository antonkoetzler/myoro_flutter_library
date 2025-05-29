import 'package:flutter/material.dart';

/// Callback when a selection input is changed.
typedef PaddingWidgetShowcaseOptionSelectionOnChanged = void Function(EdgeInsets padding);

/// Callback of [_SelectionInput].
typedef PaddingWidgetShowcaseOptionSelectionInputOnChanged = void Function(double value);

/// Callback of [_Title]'s [MyoroCheckbox].
typedef PaddingWidgetShowcaseOptionTitleCheckboxOnChanged = void Function(bool enabled, EdgeInsets padding);
