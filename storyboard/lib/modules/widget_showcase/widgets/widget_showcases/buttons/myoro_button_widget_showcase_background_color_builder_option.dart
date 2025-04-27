import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_button_widget_showcase_bloc/myoro_button_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// [MyoroButtonConfiguration.backgroundColorBuilder] option of [MyoroButtonWidgetShowcase].
///
/// TODO: Needs to be tested.
final class MyoroButtonWidgetShowcaseBackgroundColorBuilderOption extends StatelessWidget {
  const MyoroButtonWidgetShowcaseBackgroundColorBuilderOption({super.key});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroButtonWidgetShowcaseThemeExtension>();
    final bloc = context.resolveBloc<MyoroButtonWidgetShowcaseBloc>();

    return BlocBuilder<MyoroButtonWidgetShowcaseBloc, MyoroButtonWidgetShowcaseState>(
      buildWhen: (previous, current) {
        return previous.backgroundColorBuilderEnabled != current.backgroundColorBuilderEnabled;
      },
      builder: (_, MyoroButtonWidgetShowcaseState state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          spacing: themeExtension.spacing,
          children: [
            MyoroCheckbox(
              label: '[MyoroButtonConfiguration.backgroundColorBuilder]',
              initialValue: state.backgroundColorBuilderEnabled,
              onChanged: (value) => _checkboxOnChanged(bloc, value),
            ),
            if (state.backgroundColorBuilderEnabled) ...[
              ColorDropdownWidgetShowcaseOption(
                label: '[MyoroTapStatusEnum.idle] color',
                onChanged: (color) => _idleColorOnChanged(bloc, color),
              ),
              ColorDropdownWidgetShowcaseOption(
                label: '[MyoroTapStatusEnum.hover] color',
                onChanged: (color) => _hoverColorOnChanged(bloc, color),
              ),
              ColorDropdownWidgetShowcaseOption(
                label: '[MyoroTapStatusEnum.tap] color',
                onChanged: (color) => _tapColorOnChanged(bloc, color),
              ),
            ],
          ],
        );
      },
    );
  }

  void _checkboxOnChanged(MyoroButtonWidgetShowcaseBloc bloc, bool backgroundColorBuilderEnabled) {
    bloc.add(SetBackgroundColorBuilderEnabledEvent(backgroundColorBuilderEnabled));
  }

  void _idleColorOnChanged(MyoroButtonWidgetShowcaseBloc bloc, Color? color) {
    bloc.add(SetIdleBackgroundColorEvent(color));
  }

  void _hoverColorOnChanged(MyoroButtonWidgetShowcaseBloc bloc, Color? color) {
    bloc.add(SetHoverBackgroundColorEvent(color));
  }

  void _tapColorOnChanged(MyoroButtonWidgetShowcaseBloc bloc, Color? color) {
    bloc.add(SetTapBackgroundColorEvent(color));
  }
}
