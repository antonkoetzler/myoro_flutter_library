import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase option to select a [MyoroSnackBarType] via [MyoroSingleDropdown].
final class MyoroSnackBarTypeWidgetShowcaseOption extends StatelessWidget {
  static const selectedItemDefaultValue = MyoroSnackBarTypeEnum.attention;

  const MyoroSnackBarTypeWidgetShowcaseOption({
    super.key,
    this.selectedItem = selectedItemDefaultValue,
    required this.onChanged,
  });

  /// Initial item of [MyoroSingleDropdownConfiguration].
  final MyoroSnackBarTypeEnum selectedItem;

  /// [MyoroSingleDropdownConfiguration.onChanged]
  final MyoroSingleDropdownOnChanged<MyoroSnackBarTypeEnum> onChanged;

  @override
  Widget build(_) {
    final viewModel = MyoroSnackBarTypeWidgetShowcaseOptionViewModel();

    return MyoroSingleDropdown<MyoroSnackBarTypeEnum>(
      configuration: MyoroSingleDropdownConfiguration(
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
