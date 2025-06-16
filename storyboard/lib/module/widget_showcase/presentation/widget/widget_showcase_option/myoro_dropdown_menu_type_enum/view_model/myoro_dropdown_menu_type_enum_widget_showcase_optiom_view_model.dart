import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroDropdownMenuTypeEnumWidgetShowcaseOption].
final class MyoroDropdownMenuTypeEnumWidgetShowcaseOptiomViewModel {
  String selectedItemBuilder(MyoroDropdownMenuTypeEnum item) {
    return item.name.capitalized;
  }

  MyoroMenuItem itemBuilder(MyoroDropdownMenuTypeEnum item) {
    return MyoroMenuItem(textConfiguration: MyoroIconTextButtonTextConfiguration(text: item.name.capitalized));
  }
}
