import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_border_option.dart';
part '_widget/_checkbox_on_changed_option.dart';
part '_widget/_content_padding_option.dart';
part '_widget/_enabled_option.dart';
part '_widget/_input.dart';
part '_widget/_input_style_option.dart';
part '_widget/_input_text_style_option.dart';
part '_widget/_label_option.dart';
part '_widget/_label_text_style_option.dart';
part '_widget/_on_changed_option.dart';
part '_widget/_on_cleared_option.dart';
part '_widget/_on_field_submitted_option.dart';
part '_widget/_placeholder_option.dart';
part '_widget/_read_only_option.dart';
part '_widget/_show_clear_text_button_option.dart';
part '_widget/_submit_button.dart';
part '_widget/_suffix.dart';
part '_widget/_suffix_option.dart';
part '_widget/_text_align_option.dart';
part '_widget/_validation_option.dart';
part '_widget/_validation_option_message.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroInput].
final class MyoroInputWidgetShowcaseScreen extends StatelessWidget {
  static const inputStyleOptionKey = 'inputStyleOption';
  static const textAlignOptionKey = 'textAlignOption';
  static const inputTextStyleOptionKey = 'inputTextStyleOption';
  static const labelOptionKey = 'labelOption';
  static const labelTextStyleOptionKey = 'labelTextStyleOption';
  static const placeholderOptionKey = 'placeholderOption';
  static const contentPaddingOptionKey = 'contentPaddingOption';
  static const borderOptionKey = 'borderOption';
  static const suffixOptionKey = 'suffixOption';
  static const enabledOptionKey = 'enabledOption';
  static const readOnlyOptionKey = 'readOnlyOption';
  static const showClearTextButtonOptionKey = 'showClearTextButtonOption';
  static const checkboxOnChangedOptionKey = 'checkboxOnChangedOption';
  static const validationOptionKey = 'validationOption';
  static const onFieldSubmittedOptionKey = 'onFieldSubmittedOption';
  static const onChangedOptionKey = 'onChangedOption';
  static const onClearedOptionKey = 'onClearedOption';

  static const options = {
    inputStyleOptionKey: _InputStyleOption(),
    textAlignOptionKey: _TextAlignOption(),
    inputTextStyleOptionKey: _InputTextStyleOption(),
    labelOptionKey: _LabelOption(),
    labelTextStyleOptionKey: _LabelTextStyleOption(),
    placeholderOptionKey: _PlaceholderOption(),
    contentPaddingOptionKey: _ContentPaddingOption(),
    borderOptionKey: _BorderOption(),
    suffixOptionKey: _SuffixOption(),
    enabledOptionKey: _EnabledOption(),
    readOnlyOptionKey: _ReadOnlyOption(),
    showClearTextButtonOptionKey: _ShowClearTextButtonOption(),
    checkboxOnChangedOptionKey: _CheckboxOnChangedOption(),
    validationOptionKey: _ValidationOption(),
    onFieldSubmittedOptionKey: _OnFieldSubmittedOption(),
    onChangedOptionKey: _OnChangedOption(),
    onClearedOptionKey: _OnClearedOption(),
  };

  const MyoroInputWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroInputWidgetShowcaseScreenViewModel(),
      child: WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroInputTitle,
          widget: const _Widget(),
          widgetOptions: options.values.toList(),
        ),
      ),
    );
  }
}
