import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

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
  final MyoroSingleMenuOnChanged<MyoroSnackBarTypeEnum> onChanged;

  @override
  Widget build(_) {
    final viewModel = MyoroSnackBarTypeWidgetShowcaseOptionViewModel();

    return MyoroSingleSelectionDropdown<MyoroSnackBarTypeEnum>(
      configuration: MyoroSingleSelectionDropdownConfiguration(
        onChanged: onChanged,
        selectedItemBuilder: viewModel.selectedItemBuilder,
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: MyoroSnackBarTypeEnum.values.toSet,
          selectedItem: selectedItem,
          itemBuilder: viewModel.itemBuilder,
        ),
      ),
    );
  }
}
