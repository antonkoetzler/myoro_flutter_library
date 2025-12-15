import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/storybook.dart';

part '../_widget/_padding_option.dart';
part '../_widget/_spacing_option.dart';
part '../_widget/_direction_option.dart';
part '../_widget/_reverse_option.dart';
part '../_widget/_clip_behavior_option.dart';
part '../_widget/_drag_start_behavior_option.dart';
part '../_widget/_physics_option.dart';
part '../_widget/_primary_option.dart';
part '../_widget/_shrink_wrap_option.dart';
part '../_widget/_add_automatic_keep_alives_option.dart';
part '../_widget/_add_repaint_boundaries_option.dart';
part '../_widget/_add_semantic_indexes_option.dart';
part '../_widget/_keyboard_dismiss_behavior_option.dart';
part '../_widget/_hit_test_behavior_option.dart';
part '../_widget/_widget.dart';
part '../_widget/_single_child_scrollable_widget.dart';
part '../_widget/_list_scrollable_widget.dart';

/// Widget showcase of [MyoroSingleChildScrollable] and [MyoroListScrollable].
final class MyoroScrollablesWidgetShowcaseScreen extends StatelessWidget {
  // Configuration-related options (behavior, data, structural properties)
  static const configurationOptions = [
    _PrimaryOption(),
    _ShrinkWrapOption(),
    _AddAutomaticKeepAlivesOption(),
    _AddRepaintBoundariesOption(),
    _AddSemanticIndexesOption(),
    _KeyboardDismissBehaviorOption(),
    _HitTestBehaviorOption(),
    _DirectionOption(),
    _ReverseOption(),
    _ClipBehaviorOption(),
    _DragStartBehaviorOption(),
    _PhysicsOption(),
  ];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = [_PaddingOption(), _SpacingOption()];

  const MyoroScrollablesWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return Provider(
      create: (_) => MyoroScrollablesWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroScrollablesTitle,
          widget: _Widget(),
          configurationOptions: configurationOptions,
          stylingOptions: stylingOptions,
        ),
      ),
    );
  }
}
