import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroDropdownMenuTypeEnumWidgetShowcaseOption].
final class MyoroDropdownMenuTypeEnumWidgetShowcaseOptiomViewModel {
  String selectedItemBuilder(MyoroDropdownMenuTypeEnum item) {
    return item.name.capitalized;
  }

  MyoroMenuItem itemBuilder(MyoroDropdownMenuTypeEnum item) {
    return MyoroMenuItem(
      iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
        textConfiguration: MyoroTextConfiguration(text: item.name.capitalized),
      ),
    );
  }
}
