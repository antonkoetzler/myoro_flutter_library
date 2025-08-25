import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroSnackBarTypeWidgetShowcaseOption].
final class MyoroSnackBarTypeWidgetShowcaseOptionViewModel {
  /// [MyoroDropdownConfiguration.selectedItemBuilder]
  String selectedItemBuilder(MyoroSnackBarTypeEnum item) {
    return item.name.capitalized;
  }

  /// [MyoroMenuConfiguration.itemBuilder]
  MyoroMenuItem itemBuilder(MyoroSnackBarTypeEnum item) {
    return MyoroMenuItem(
      iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
        textConfiguration: MyoroTextConfiguration(text: item.name.capitalized),
      ),
    );
  }
}
