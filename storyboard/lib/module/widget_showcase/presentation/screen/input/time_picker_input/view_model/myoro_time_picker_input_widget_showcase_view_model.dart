import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroTimePickerInputWidgetShowcaseScreen].
final class MyoroTimePickerInputWidgetShowcaseViewModel extends MyoroInputWidgetShowcaseScreenViewModel {
  @override
  MyoroTimePickerInputConfiguration configuration(BuildContext context, Widget suffix) {
    final inputConfiguration = super.configuration(context, suffix);
    return MyoroTimePickerInputConfiguration(
      inputStyle: inputConfiguration.inputStyle,
      textAlign: inputConfiguration.textAlign,
      inputTextStyle: inputConfiguration.inputTextStyle,
      label: inputConfiguration.label,
      labelTextStyle: inputConfiguration.labelTextStyle,
      contentPadding: inputConfiguration.contentPadding,
      border: inputConfiguration.border,
      suffix: inputConfiguration.suffix,
      enabled: inputConfiguration.enabled,
      showClearTextButton: inputConfiguration.showClearTextButton,
      checkboxOnChanged: inputConfiguration.checkboxOnChanged,
      validation: inputConfiguration.validation,
      onFieldSubmitted: inputConfiguration.onFieldSubmitted,
      onChanged: inputConfiguration.onChanged,
      onCleared: inputConfiguration.onCleared,
    );
  }
}
