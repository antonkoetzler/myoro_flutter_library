import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_allow_item_clearing_option.dart';
part '_widget/_label_option.dart';
part '_widget/_menu_type_enum_option.dart';
part '_widget/_multi_dropdown.dart';
part '_widget/_selected_item_text_align_option.dart';
part '_widget/_singular_dropdown.dart';
part '_widget/_title.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroSingularDropdown] and [MyoroMultiDropdown].
final class MyoroDropdownWidgetShowcaseScreen extends StatefulWidget {
  static const options = [
    _LabelOption(),
    _MenuTypeEnumOption(),
    _AllowItemClearingOption(),
    _SelectedItemTextAlignOption(),
  ];

  const MyoroDropdownWidgetShowcaseScreen({super.key});

  @override
  State<MyoroDropdownWidgetShowcaseScreen> createState() => _MyoroDropdownWidgetShowcaseScreenState();
}

final class _MyoroDropdownWidgetShowcaseScreenState extends State<MyoroDropdownWidgetShowcaseScreen> {
  final _dropdownViewModel = MyoroDropdownWidgetShowcaseScreenViewModel();

  @override
  void dispose() {
    _dropdownViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    return MultiProvider(
      providers: [
        InheritedProvider(create: (_) => _dropdownViewModel),
        InheritedProvider.value(value: _dropdownViewModel.state.menuViewModel),
      ],
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroDropdownsTitle,
          widget: _Widget(),
          widgetOptions: [...MyoroDropdownWidgetShowcaseScreen.options, ...MyoroMenuWidgetShowcaseScreen.options],
        ),
      ),
    );
  }
}
