import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroSnackBarTypeWidgetShowcaseOption].
final class MyoroSnackBarTypeWidgetShowcaseOptionViewModel {
  /// [MyoroSelectionDropdownConfiguration.selectedItemBuilder]
  String selectedItemBuilder(MyoroSnackBarTypeEnum item) {
    return item.name.capitalized;
  }

  /// [MyoroMenuConfiguration.itemBuilder]
  MyoroMenuItem itemBuilder(MyoroSnackBarTypeEnum item) {
    return MyoroMenuIconTextButtonItem(
      configuration: MyoroIconTextButtonConfiguration(
        textConfiguration: MyoroTextConfiguration(text: item.name.capitalized),
      ),
    );
  }
}
