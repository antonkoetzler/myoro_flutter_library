import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_allow_item_clearing_option.dart';
part '_widget/_label_option.dart';
part '_widget/_menu_border_option.dart';
part '_widget/_menu_border_radius_option.dart';
part '_widget/_menu_type_enum_option.dart';
part '_widget/_multi_dropdown.dart';
part '_widget/_selected_item_text_align_option.dart';
part '_widget/_singular_dropdown.dart';
part '_widget/_spacing_option.dart';
part '_widget/_title.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroSingularDropdown] and [MyoroMultiDropdown].
final class MyoroDropdownsWidgetShowcaseScreen extends StatefulWidget {
  // Configuration-related options (behavior, data, structural properties)
  static const configurationOptions = [
    _LabelOption(),
    _MenuTypeEnumOption(),
    _AllowItemClearingOption(),
    _SelectedItemTextAlignOption(),
  ];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = [_SpacingOption(), _MenuBorderOption(), _MenuBorderRadiusOption()];

  const MyoroDropdownsWidgetShowcaseScreen({super.key});

  @override
  State<MyoroDropdownsWidgetShowcaseScreen> createState() => _MyoroDropdownsWidgetShowcaseScreenState();
}

final class _MyoroDropdownsWidgetShowcaseScreenState extends State<MyoroDropdownsWidgetShowcaseScreen> {
  final _dropdownViewModel = MyoroDropdownsWidgetShowcaseScreenViewModel();

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
          configurationOptions: [
            ...MyoroDropdownsWidgetShowcaseScreen.configurationOptions,
            ...MyoroMenusWidgetShowcaseScreen.configurationOptions,
          ],
          stylingOptions: [
            ...MyoroDropdownsWidgetShowcaseScreen.stylingOptions,
            ...MyoroMenusWidgetShowcaseScreen.stylingOptions,
          ],
        ),
      ),
    );
  }
}
