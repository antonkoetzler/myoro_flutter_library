import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase option to select a [MyoroSelectionDropdownMenuTypeEnum] via [MyoroSingleSelectionDropdown].
final class MyoroDropdownMenuTypeEnumWidgetShowcaseOption extends StatelessWidget {
  const MyoroDropdownMenuTypeEnumWidgetShowcaseOption({super.key, required this.selectedItem, required this.onChanged});

  /// Initially selected [MyoroSelectionDropdownMenuTypeEnum].
  final MyoroSelectionDropdownMenuTypeEnum selectedItem;

  /// [MyoroSingleSelectionDropdown.onChanged]
  final MyoroDropdownMenuTypeEnumWidgetShowcaseOptionOnChanged onChanged;

  @override
  Widget build(_) {
    final viewModel = MyoroDropdownMenuTypeEnumWidgetShowcaseOptiomViewModel();

    return MyoroSingleSelectionDropdown(
      configuration: MyoroSingleSelectionDropdownConfiguration(
        label: 'Menu render type.',
        selectedItemBuilder: viewModel.selectedItemBuilder,
        onChanged: (item) => onChanged(item!),
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: MyoroSelectionDropdownMenuTypeEnum.values.toSet,
          selectedItem: selectedItem,
          itemBuilder: viewModel.itemBuilder,
        ),
      ),
    );
  }
}
