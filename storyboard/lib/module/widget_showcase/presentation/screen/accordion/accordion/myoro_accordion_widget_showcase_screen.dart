import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_item_content_animation_curve_option.dart';
part '_widget/_item_content_animation_duration_option.dart';
part '_widget/_item_content_background_color_option.dart';
part '_widget/_item_title_button_arrow_animation_curve_option.dart';
part '_widget/_item_title_button_arrow_animation_duration_option.dart';
part '_widget/_item_title_button_arrow_icon_color_option.dart';
part '_widget/_item_title_button_arrow_icon_option.dart';
part '_widget/_item_title_button_arrow_icon_size_option.dart';
part '_widget/_item_title_button_content_padding_option.dart';
part '_widget/_item_title_button_selected_background_color_option.dart';
part '_widget/_item_title_button_spacing_option.dart';
part '_widget/_item_title_button_title_text_style_option.dart';
part '_widget/_thumb_visibility_option.dart';
part '_widget/_widget.dart';

/// [WidgetShowcaseScreen] of [MyoroAccordion].
final class MyoroAccordionWidgetShowcaseScreen extends StatelessWidget {
  static const options = [
    _ThumbVisibilityOption(),
    _ItemContentBackgroundColorOption(),
    _ItemContentAnimationDurationOption(),
    _ItemContentAnimationCurveOption(),
    _ItemTitleButtonSelectedBackgroundColorOption(),
    _ItemTitleButtonContentPaddingOption(),
    _ItemTitleButtonSpacingOption(),
    _ItemTitleButtonTitleTextStyleOption(),
    _ItemTitleButtonArrowIconOption(),
    _ItemTitleButtonArrowIconColorOption(),
    _ItemTitleButtonArrowIconSizeOption(),
    _ItemTitleButtonArrowAnimationDurationOption(),
    _ItemTitleButtonArrowAnimationCurveOption(),
  ];

  const MyoroAccordionWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroAccordionWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroAccordionTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
