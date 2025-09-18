import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase option to select a [MyoroSnackBarType] via [MyoroSingularDropdown].
final class MyoroSnackBarTypeWidgetShowcaseOption extends StatelessWidget {
  static const selectedItemDefaultValue = MyoroSnackBarTypeEnum.attention;

  const MyoroSnackBarTypeWidgetShowcaseOption({
    super.key,
    this.selectedItem = selectedItemDefaultValue,
    required this.onChanged,
  });

  /// Initial item of [MyoroSingularDropdownConfiguration].
  final MyoroSnackBarTypeEnum selectedItem;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<MyoroSnackBarTypeEnum> onChanged;

  @override
  Widget build(_) {
    final viewModel = MyoroSnackBarTypeWidgetShowcaseOptionViewModel();

    return MyoroSingularDropdown<MyoroSnackBarTypeEnum>(
      configuration: MyoroSingularDropdownConfiguration(
        onChanged: onChanged,
        selectedItemBuilder: viewModel.selectedItemBuilder,
        menuConfiguration: MyoroSingularMenuConfiguration(
          request: MyoroSnackBarTypeEnum.values.toSet,
          selectedItem: selectedItem,
          itemBuilder: viewModel.itemBuilder,
        ),
      ),
    );
  }
}
