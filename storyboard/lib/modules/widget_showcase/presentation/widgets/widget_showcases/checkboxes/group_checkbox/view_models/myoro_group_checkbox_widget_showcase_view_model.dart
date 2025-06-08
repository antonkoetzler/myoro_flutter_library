import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroGroupCheckboxWidgetShowcase].
final class MyoroGroupCheckboxWidgetShowcaseViewModel extends ChangeNotifier {
  /// [MyoroGroupCheckboxConfiguration.direction]
  Axis _direction = MyoroGroupCheckboxConfiguration.directionDefaultValue;
  Axis get direction => _direction;
  set direction(Axis direction) {
    _direction = direction;
    notifyListeners();
  }

  /// [MyoroGroupCheckboxConfiguration.spacing]
  double? _spacing;
  double? get spacing => _spacing;
  set spacing(double? spacing) {
    _spacing = spacing;
    notifyListeners();
  }

  /// [MyoroGroupCheckboxConfiguration.runSpacing]
  double? _runSpacing;
  double? get runSpacing => _runSpacing;
  set runSpacing(double? runSpacing) {
    _runSpacing = runSpacing;
    notifyListeners();
  }

  /// [MyoroGroupCheckboxConfiguration.onChanged]
  void onChanged(BuildContext context, String key, MyoroGroupCheckboxItems checkboxes) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(
          snackBarType: MyoroSnackBarTypeEnum.attention,
          message: '$key changed. It\'s value is now ${checkboxes[key]}.',
        ),
      ),
    );
  }
}
