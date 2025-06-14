import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_border_option.dart';
part '_widgets/_checkbox_on_changed_option.dart';
part '_widgets/_content_padding_option.dart';
part '_widgets/_enabled_option.dart';
part '_widgets/_input.dart';
part '_widgets/_input_style_option.dart';
part '_widgets/_input_text_style_option.dart';
part '_widgets/_label_option.dart';
part '_widgets/_label_text_style_option.dart';
part '_widgets/_on_changed_option.dart';
part '_widgets/_on_cleared_option.dart';
part '_widgets/_on_field_submitted_option.dart';
part '_widgets/_placeholder_option.dart';
part '_widgets/_read_only_option.dart';
part '_widgets/_show_clear_text_button_option.dart';
part '_widgets/_submit_button.dart';
part '_widgets/_suffix.dart';
part '_widgets/_suffix_option.dart';
part '_widgets/_text_align_option.dart';
part '_widgets/_validation_option.dart';
part '_widgets/_validation_option_message.dart';
part '_widgets/_widget.dart';
part 'view_model/myoro_input_widget_showcase_state.dart';
part 'view_model/myoro_input_widget_showcase_view_model.dart';

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
