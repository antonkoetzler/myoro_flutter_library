import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase option to select a [MyoroSnackBarType] via [MyoroSingularDropdown].
final class MyoroSnackBarTypeWidgetShowcaseOption extends StatelessWidget {
  static const initiallySelectedItemDefaultValue = MyoroSnackBarTypeEnum.attention;

  const MyoroSnackBarTypeWidgetShowcaseOption({
    super.key,
    this.initiallySelectedItem = initiallySelectedItemDefaultValue,
    required this.onChanged,
  });

  /// Initial item of [MyoroSingularDropdownConfiguration].
  final MyoroSnackBarTypeEnum initiallySelectedItem;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<MyoroSnackBarTypeEnum> onChanged;

  @override
  Widget build(_) {
    final viewModel = MyoroSnackBarTypeWidgetShowcaseOptionViewModel();

    return MyoroSingularDropdown<MyoroSnackBarTypeEnum>(
      controller: MyoroSingularDropdownController(initiallySelectedItem: initiallySelectedItem),
      configuration: MyoroSingularDropdownConfiguration(
        onChanged: onChanged,
        selectedItemBuilder: viewModel.selectedItemBuilder,
        menuConfiguration: MyoroMenuConfiguration(
          request: MyoroSnackBarTypeEnum.values.toSet,
          itemBuilder: viewModel.itemBuilder,
        ),
      ),
    );
  }
}
