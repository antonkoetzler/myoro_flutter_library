import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroSearchInputWidgetShowcaseScreen].
final class MyoroSearchInputWidgetShowcaseScreenViewModel {
  /// State
  final state = MyoroSearchInputWidgetShowcaseScreenState();

  /// View model of [MyoroInputWidgetShowcaseScreen].
  final inputViewModel = MyoroInputWidgetShowcaseScreenViewModel();

  /// Configuration of the [MyoroSearchInput] given the options set.
  MyoroSearchInputConfiguration<String> configuration(BuildContext context, Widget suffix) {
    final inputConfiguration = inputViewModel.configuration(context, suffix);
    return MyoroSearchInputConfiguration(
      inputStyle: inputConfiguration.inputStyle,
      textAlign: inputConfiguration.textAlign,
      inputTextStyle: inputConfiguration.inputTextStyle,
      label: inputConfiguration.label,
      labelTextStyle: inputConfiguration.labelTextStyle,
      placeholder: inputConfiguration.placeholder,
      contentPadding: inputConfiguration.contentPadding,
      border: inputConfiguration.border,
      suffix: inputConfiguration.suffix,
      enabled: inputConfiguration.enabled,
      readOnly: inputConfiguration.readOnly,
      autofocus: inputConfiguration.autofocus,
      showClearTextButton: inputConfiguration.showClearTextButton,
      checkboxOnChanged: inputConfiguration.checkboxOnChanged,
      validation: inputConfiguration.validation,
      onFieldSubmitted: inputConfiguration.onFieldSubmitted,
      onChanged: inputConfiguration.onChanged,
      onCleared: inputConfiguration.onCleared,
      requestWhenChanged: state.requestWhenChanged,
      request: _request,
      itemBuilder: _itemBuilder,
    );
  }

  /// [MyoroSearchInputConfiguration.request]
  Set<String> _request(String query) {
    return state.items.where((item) => item.toUpperCase().contains(query.toUpperCase())).toSet();
  }

  /// [MyoroSearchInputConfiguration.itemBuilder]
  MyoroMenuItem _itemBuilder(String item) {
    return MyoroMenuItem(
      iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
        textConfiguration: MyoroTextConfiguration(text: item),
      ),
    );
  }
}
