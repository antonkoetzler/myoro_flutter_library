import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase option to select a [MyoroDropdownMenuTypeEnum] via [MyoroSingularDropdown].
final class MyoroDropdownMenuTypeEnumWidgetShowcaseOption extends StatelessWidget {
  const MyoroDropdownMenuTypeEnumWidgetShowcaseOption({
    super.key,
    required this.initiallySelectedItem,
    required this.onChanged,
  });

  /// Initially selected [MyoroDropdownMenuTypeEnum].
  final MyoroDropdownMenuTypeEnum initiallySelectedItem;

  /// [MyoroSingularDropdown.onChanged]
  final MyoroDropdownMenuTypeEnumWidgetShowcaseOptionOnChanged onChanged;

  @override
  Widget build(_) {
    final viewModel = MyoroDropdownMenuTypeEnumWidgetShowcaseOptiomViewModel();

    return MyoroSingularDropdown(
      controller: MyoroSingularDropdownController(initiallySelectedItem: initiallySelectedItem),
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Menu render type.',
        selectedItemBuilder: viewModel.selectedItemBuilder,
        onChanged: (item) => onChanged(item!),
        menuConfiguration: MyoroMenuConfiguration(
          request: MyoroDropdownMenuTypeEnum.values.toSet,
          itemBuilder: viewModel.itemBuilder,
        ),
      ),
    );
  }
}
