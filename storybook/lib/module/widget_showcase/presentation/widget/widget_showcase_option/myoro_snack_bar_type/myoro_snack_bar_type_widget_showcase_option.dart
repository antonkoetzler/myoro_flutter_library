import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// Widget showcase option to select a [MyoroSnackBarType] via [MyoroSingleSelectionDropdown].
final class MyoroSnackBarTypeWidgetShowcaseOption extends StatelessWidget {
  static const selectedItemDefaultValue = MyoroSnackBarTypeEnum.attention;

  const MyoroSnackBarTypeWidgetShowcaseOption({
    super.key,
    this.selectedItem = selectedItemDefaultValue,
    required this.onChanged,
  });

  /// Initial item of [MyoroSingleSelectionDropdownConfiguration].
  final MyoroSnackBarTypeEnum selectedItem;

  /// [MyoroSingleSelectionDropdownConfiguration.onChanged]
  final void Function(MyoroSnackBarTypeEnum?) onChanged;

  @override
  Widget build(_) {
    final viewModel = MyoroSnackBarTypeWidgetShowcaseOptionViewModel();

    return MyoroSingleSelectionDropdown<MyoroSnackBarTypeEnum>(
      onChanged: onChanged,
      selectedItemBuilder: viewModel.selectedItemBuilder,
      itemBuilder: viewModel.itemBuilder,
      items: MyoroSnackBarTypeEnum.values.toSet(),
      selectedItem: selectedItem,
    );
  }
}
