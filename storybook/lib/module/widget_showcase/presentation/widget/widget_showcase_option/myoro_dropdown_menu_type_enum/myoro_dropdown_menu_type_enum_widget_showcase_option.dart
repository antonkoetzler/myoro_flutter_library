import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// Widget showcase option to select a [MyoroDropdownTypeEnum] via [MyoroSingleSelectionDropdown].
final class MyoroDropdownMenuTypeEnumWidgetShowcaseOption extends StatelessWidget {
  const MyoroDropdownMenuTypeEnumWidgetShowcaseOption({super.key, required this.selectedItem, required this.onChanged});

  /// Initially selected [MyoroDropdownTypeEnum].
  final MyoroDropdownTypeEnum selectedItem;

  /// [MyoroSingleSelectionDropdown.onChanged]
  final MyoroDropdownMenuTypeEnumWidgetShowcaseOptionOnChanged onChanged;

  @override
  Widget build(_) {
    final viewModel = MyoroDropdownMenuTypeEnumWidgetShowcaseOptiomViewModel();

    return MyoroSingleSelectionDropdown<MyoroDropdownTypeEnum>(
      label: 'Menu render type.',
      selectedItemBuilder: viewModel.selectedItemBuilder,
      onChanged: (item) => onChanged(item!),
      itemBuilder: viewModel.itemBuilder,
      items: MyoroDropdownTypeEnum.values.toSet(),
      selectedItem: selectedItem,
    );
  }
}
