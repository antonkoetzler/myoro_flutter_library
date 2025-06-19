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
final class MyoroInputWidgetShowcase extends StatelessWidget {
  static const options = [
    _InputStyleOption(),
    _TextAlignOption(),
    _InputTextStyleOption(),
    _LabelOption(),
    _LabelTextStyleOption(),
    _PlaceholderOption(),
    _ContentPaddingOption(),
    _BorderOption(),
    _SuffixOption(),
    _EnabledOption(),
    _ReadOnlyOption(),
    _ShowClearTextButtonOption(),
    _CheckboxOnChangedOption(),
    _ValidationOption(),
    _OnFieldSubmittedOption(),
    _OnChangedOption(),
    _OnClearedOption(),
  ];

  const MyoroInputWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroInputWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroInputTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
