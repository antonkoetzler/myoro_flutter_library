import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase option to select a [MyoroDropdownMenuTypeEnum] via [MyoroSingleDropdown].
final class MyoroDropdownMenuTypeEnumWidgetShowcaseOption extends StatelessWidget {
  const MyoroDropdownMenuTypeEnumWidgetShowcaseOption({super.key, required this.selectedItem, required this.onChanged});

  /// Initially selected [MyoroDropdownMenuTypeEnum].
  final MyoroDropdownMenuTypeEnum selectedItem;

  /// [MyoroSingleDropdown.onChanged]
  final MyoroDropdownMenuTypeEnumWidgetShowcaseOptionOnChanged onChanged;

  @override
  Widget build(_) {
    final viewModel = MyoroDropdownMenuTypeEnumWidgetShowcaseOptiomViewModel();

    return MyoroSingleDropdown(
      configuration: MyoroSingleDropdownConfiguration(
        label: 'Menu render type.',
        selectedItemBuilder: viewModel.selectedItemBuilder,
        onChanged: (item) => onChanged(item!),
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: MyoroDropdownMenuTypeEnum.values.toSet,
          selectedItem: selectedItem,
          itemBuilder: viewModel.itemBuilder,
        ),
      ),
    );
  }
}
