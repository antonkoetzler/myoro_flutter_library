import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_allow_item_clearing_option.dart';
part '_widgets/_label_option.dart';
part '_widgets/_menu_type_enum_option.dart';
part '_widgets/_multi_dropdown.dart';
part '_widgets/_selected_item_text_align_option.dart';
part '_widgets/_singular_dropdown.dart';
part '_widgets/_title.dart';
part '_widgets/_widget.dart';

/// Widget showcase of [MyoroSingularDropdown] and [MyoroMultiDropdown].
final class MyoroDropdownWidgetShowcase extends StatefulWidget {
  static const options = [
    _LabelOption(),
    _MenuTypeEnumOption(),
    _AllowItemClearingOption(),
    _SelectedItemTextAlignOption(),
    ...MyoroMenuWidgetShowcase.options,
  ];

  const MyoroDropdownWidgetShowcase({super.key});

  @override
  State<MyoroDropdownWidgetShowcase> createState() => _MyoroDropdownWidgetShowcaseState();
}

final class _MyoroDropdownWidgetShowcaseState extends State<MyoroDropdownWidgetShowcase> {
  final _dropdownViewModel = MyoroDropdownWidgetShowcaseViewModel();

  @override
  void dispose() {
    _dropdownViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    return MultiProvider(
      providers: [
        InheritedProvider(create: (_) => MyoroDropdownWidgetShowcaseViewModel()),
        InheritedProvider.value(value: (_) => _dropdownViewModel.menuViewModel),
      ],
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroDropdownsTitle,
          widget: _Widget(),
          widgetOptions: MyoroDropdownWidgetShowcase.options,
        ),
      ),
    );
  }
}
