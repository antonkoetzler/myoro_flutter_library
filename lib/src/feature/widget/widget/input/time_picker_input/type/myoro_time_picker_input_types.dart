import 'package:flutter/material.dart';

/// Validation function.
typedef MyoroTimePickerInputValidation = String? Function(TimeOfDay? time);

/// On changed function.
typedef MyoroTimePickerInputOnChanged = void Function(TimeOfDay? time);
