import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroInputStyleEnumWidgetShowcaseOption].
final class MyoroInputStyleEnumWidgetShowcaseOptionViewModel {
  /// [MyoroDropdownConfiguration.selectedItemBuilder]
  String selectedItemBuilder(MyoroInputStyleEnum item) {
    return item.name.capitalized;
  }

  /// [MyoroMenuConfiguration.itemBuilder]
  MyoroMenuItem itemBuilder(MyoroInputStyleEnum item) {
    return MyoroMenuItem(
      iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
        textConfiguration: MyoroTextConfiguration(text: item.name.capitalized),
      ),
    );
  }
}
