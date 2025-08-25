import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase option for choosing a [MyoroInputStyleEnum].
final class MyoroInputStyleEnumWidgetShowcaseOption extends StatelessWidget {
  const MyoroInputStyleEnumWidgetShowcaseOption({super.key, required this.selectedStyle, required this.onChanged});

  /// Initially selected [MyoroInputStyleEnum].
  final MyoroInputStyleEnum selectedStyle;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroInputStyleEnumWidgetShowcaseOptionOnChanged onChanged;

  @override
  Widget build(_) {
    final viewModel = MyoroInputStyleEnumWidgetShowcaseOptionViewModel();

    return MyoroSingularDropdown<MyoroInputStyleEnum>(
      configuration: MyoroSingularDropdownConfiguration(
        label: 'MyoroInputStyleEnum',
        allowItemClearing: false,
        onChanged: (item) => onChanged(item!),
        selectedItemBuilder: viewModel.selectedItemBuilder,
        menuConfiguration: MyoroSingularMenuConfiguration(
          request: MyoroInputStyleEnum.values.toSet,
          itemBuilder: viewModel.itemBuilder,
        ),
        selectedItem: selectedStyle,
      ),
    );
  }
}
