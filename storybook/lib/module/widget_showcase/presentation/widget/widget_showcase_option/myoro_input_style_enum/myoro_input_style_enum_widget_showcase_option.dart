import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// Widget showcase option for choosing a [MyoroInputStyleEnum].
final class MyoroInputStyleEnumWidgetShowcaseOption extends StatelessWidget {
  const MyoroInputStyleEnumWidgetShowcaseOption({super.key, required this.selectedStyle, required this.onChanged});

  /// Initially selected [MyoroInputStyleEnum].
  final MyoroInputStyleEnum selectedStyle;

  /// [MyoroSingleSelectionDropdownConfiguration.onChanged]
  final MyoroInputStyleEnumWidgetShowcaseOptionOnChanged onChanged;

  @override
  Widget build(_) {
    final viewModel = MyoroInputStyleEnumWidgetShowcaseOptionViewModel();

    return MyoroSingleSelectionDropdown<MyoroInputStyleEnum>(
      configuration: MyoroSingleSelectionDropdownConfiguration(
        label: 'MyoroInputStyleEnum',
        onChanged: (item) => onChanged(item!),
        selectedItemBuilder: viewModel.selectedItemBuilder,
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: MyoroInputStyleEnum.values.toSet,
          selectedItem: selectedStyle,
          itemBuilder: viewModel.itemBuilder,
        ),
      ),
    );
  }
}
