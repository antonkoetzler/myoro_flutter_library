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
part '_widget/_custom_border_option.dart';
part '_widget/_underlined_border_option.dart';
part '_widget/_outlined_border_option.dart';
part '_widget/_none_border_option.dart';
part '_widget/_primary_color_option.dart';
part '_widget/_error_border_color_option.dart';
part '_widget/_cursor_height_option.dart';
part '_widget/_disabled_opacity_option.dart';
part '_widget/_spacing_option.dart';
part '_widget/_label_behavior_option.dart';
part '_widget/_suffix_button_padding_option.dart';
part '_widget/_clear_text_button_icon_option.dart';

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
  static const customBorderOptionKey = 'customBorderOption';
  static const underlinedBorderOptionKey = 'underlinedBorderOption';
  static const outlinedBorderOptionKey = 'outlinedBorderOption';
  static const noneBorderOptionKey = 'noneBorderOption';
  static const primaryColorOptionKey = 'primaryColorOption';
  static const errorBorderColorOptionKey = 'errorBorderColorOption';
  static const cursorHeightOptionKey = 'cursorHeightOption';
  static const disabledOpacityOptionKey = 'disabledOpacityOption';
  static const spacingOptionKey = 'spacingOption';
  static const labelBehaviorOptionKey = 'labelBehaviorOption';
  static const suffixButtonPaddingOptionKey = 'suffixButtonPaddingOption';
  static const clearTextButtonIconOptionKey = 'clearTextButtonIconOption';

  // Configuration-related options (behavior, data, callbacks, structural properties)
  static const configurationOptions = [
    _LabelOption(),
    _PlaceholderOption(),
    _EnabledOption(),
    _ReadOnlyOption(),
    _ShowClearTextButtonOption(),
    _CheckboxOnChangedOption(),
    _ValidationOption(),
    _OnFieldSubmittedOption(),
    _OnChangedOption(),
    _OnClearedOption(),
    _SuffixOption(),
  ];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = [
    _InputStyleOption(),
    _TextAlignOption(),
    _InputTextStyleOption(),
    _LabelTextStyleOption(),
    _ContentPaddingOption(),
    _BorderOption(),
    _CustomBorderOption(),
    _UnderlinedBorderOption(),
    _OutlinedBorderOption(),
    _NoneBorderOption(),
    _PrimaryColorOption(),
    _ErrorBorderColorOption(),
    _CursorHeightOption(),
    _DisabledOpacityOption(),
    _SpacingOption(),
    _LabelBehaviorOption(),
    _SuffixButtonPaddingOption(),
    _ClearTextButtonIconOption(),
  ];

  /// Legacy support - maintains the original map structure for backwards compatibility
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
    customBorderOptionKey: _CustomBorderOption(),
    underlinedBorderOptionKey: _UnderlinedBorderOption(),
    outlinedBorderOptionKey: _OutlinedBorderOption(),
    noneBorderOptionKey: _NoneBorderOption(),
    primaryColorOptionKey: _PrimaryColorOption(),
    errorBorderColorOptionKey: _ErrorBorderColorOption(),
    cursorHeightOptionKey: _CursorHeightOption(),
    disabledOpacityOptionKey: _DisabledOpacityOption(),
    spacingOptionKey: _SpacingOption(),
    labelBehaviorOptionKey: _LabelBehaviorOption(),
    suffixButtonPaddingOptionKey: _SuffixButtonPaddingOption(),
    clearTextButtonIconOptionKey: _ClearTextButtonIconOption(),
  };

  const MyoroInputWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroInputWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroInputTitle,
          widget: _Widget(),
          configurationOptions: configurationOptions,
          stylingOptions: stylingOptions,
        ),
      ),
    );
  }
}
