import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase option to select a [MyoroDropdownMenuTypeEnum] via [MyoroSingularDropdown].
final class MyoroDropdownMenuTypeEnumWidgetShowcaseOption extends StatelessWidget {
  const MyoroDropdownMenuTypeEnumWidgetShowcaseOption({super.key, required this.selectedItem, required this.onChanged});

  /// Initially selected [MyoroDropdownMenuTypeEnum].
  final MyoroDropdownMenuTypeEnum selectedItem;

  /// [MyoroSingularDropdown.onChanged]
  final MyoroDropdownMenuTypeEnumWidgetShowcaseOptionOnChanged onChanged;

  @override
  Widget build(_) {
    final viewModel = MyoroDropdownMenuTypeEnumWidgetShowcaseOptiomViewModel();

    return MyoroSingularDropdown(
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Menu render type.',
        selectedItemBuilder: viewModel.selectedItemBuilder,
        onChanged: (item) => onChanged(item!),
        menuConfiguration: MyoroSingularMenuConfiguration(
          request: MyoroDropdownMenuTypeEnum.values.toSet,
          itemBuilder: viewModel.itemBuilder,
        ),
        selectedItem: selectedItem,
      ),
    );
  }
}
