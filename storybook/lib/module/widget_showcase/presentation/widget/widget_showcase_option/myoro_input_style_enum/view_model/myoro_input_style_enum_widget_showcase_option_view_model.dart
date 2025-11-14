import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroInputStyleEnumWidgetShowcaseOption].
final class MyoroInputStyleEnumWidgetShowcaseOptionViewModel {
  /// [MyoroSelectionDropdownConfiguration.selectedItemBuilder]
  String selectedItemBuilder(MyoroInputStyleEnum item) {
    return item.name.capitalized;
  }

  /// [MyoroMenuConfiguration.itemBuilder]
  MyoroMenuItem itemBuilder(MyoroInputStyleEnum item, _) {
    return MyoroMenuIconTextButtonItem(text: item.name.capitalized);
  }
}
