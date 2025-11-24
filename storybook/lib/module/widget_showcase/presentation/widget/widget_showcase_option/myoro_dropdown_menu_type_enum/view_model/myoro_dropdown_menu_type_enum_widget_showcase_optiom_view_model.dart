import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroDropdownMenuTypeEnumWidgetShowcaseOption].
final class MyoroDropdownMenuTypeEnumWidgetShowcaseOptiomViewModel {
  String selectedItemBuilder(MyoroDropdownTypeEnum item) {
    return item.name.capitalized;
  }

  MyoroMenuItem itemBuilder(_, MyoroDropdownTypeEnum item) {
    return MyoroMenuIconTextButtonItem(text: item.name.capitalized);
  }
}
