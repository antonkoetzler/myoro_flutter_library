import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroCheckboxWidgetShowcase].
final class MyoroCheckboxWidgetShowcaseViewModel with ChangeNotifier {
  String _label = MyoroCheckboxConfiguration.labelDefaultValue;
  String get label => _label;
  set label(String label) {
    _label = label;
    notifyListeners();
  }

  TextStyle? _labelTextStyle;
  TextStyle? get labelTextStyle => _labelTextStyle;
  set labelTextStyle(TextStyle? labelTextStyle) {
    _labelTextStyle = labelTextStyle;
    notifyListeners();
  }

  void onChanged(BuildContext context, bool value) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(
          snackBarType: MyoroSnackBarTypeEnum.attention,
          message: 'Checkbox changed, value is now $value.',
        ),
      ),
    );
  }
}
