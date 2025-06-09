import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_allow_item_clearing_option.dart';
part '_widgets/_label_option.dart';
part '_widgets/_menu_type_enum_option.dart';
part '_widgets/_selected_item_text_align_option.dart';
part '_widgets/_widget.dart';

/// Widget showcase of [MyoroSingularDropdown] and [MyoroMultiDropdown].
final class MyoroDropdownWidgetShowcase extends StatelessWidget {
  static const options = [
    _LabelOption(),
    _MenuTypeEnumOption(),
    _AllowItemClearingOption(),
    _SelectedItemTextAlignOption(),
  ];

  const MyoroDropdownWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroDropdownWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroDropdownsTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
