import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_button_widget_showcase_bloc/myoro_button_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// [MyoroButtonConfiguration.borderBuilder] option of [MyoroButtonWidgetShowcase].
final class MyoroButtonWidgetShowcaseBorderBuilderOption extends StatelessWidget {
  const MyoroButtonWidgetShowcaseBorderBuilderOption({super.key});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroButtonWidgetShowcaseThemeExtension>();
    final bloc = context.resolveBloc<MyoroButtonWidgetShowcaseBloc>();

    return BlocBuilder<MyoroButtonWidgetShowcaseBloc, MyoroButtonWidgetShowcaseState>(
      buildWhen: (previous, current) {
        return previous.borderBuilderEnabled != current.borderBuilderEnabled;
      },
      builder: (_, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          spacing: themeExtension.spacing,
          children: [
            MyoroCheckbox(
              label: '[MyoroButtonConfiguration.borderBuilder]',
              initialValue: state.borderBuilderEnabled,
              onChanged: (value) => _checkboxOnChanged(bloc, value),
            ),
            if (state.borderBuilderEnabled) ...[
              MyoroSlider(
                label: 'Border width',
                minValue: 0.5,
                maxValue: 10,
                initialValue: state.borderRadius,
                onChanged: (value) => _borderWidthOnChanged(bloc, value),
              ),
              ColorWidgetShowcaseOption(
                labelConfiguration: const WidgetShowcaseOptionLabelConfiguration(
                  label: 'Idle color',
                ),
                onChanged: (color) => _idleColorOnChanged(bloc, color),
              ),
              ColorWidgetShowcaseOption(
                labelConfiguration: const WidgetShowcaseOptionLabelConfiguration(
                  label: 'Hover color',
                ),
                onChanged: (color) => _hoverColorOnChanged(bloc, color),
              ),
              ColorWidgetShowcaseOption(
                labelConfiguration: const WidgetShowcaseOptionLabelConfiguration(
                  label: 'Tap color',
                ),
                onChanged: (color) => _tapColorOnChanged(bloc, color),
              ),
            ],
          ],
        );
      },
    );
  }

  void _checkboxOnChanged(MyoroButtonWidgetShowcaseBloc bloc, bool borderBuilderEnabled) {
    bloc.add(SetBorderBuilderEnabledEvent(borderBuilderEnabled));
  }

  void _borderWidthOnChanged(MyoroButtonWidgetShowcaseBloc bloc, double borderWidth) {
    bloc.add(SetBorderWidthEvent(borderWidth));
  }

  void _idleColorOnChanged(MyoroButtonWidgetShowcaseBloc bloc, Color? color) {
    bloc.add(SetIdleBorderColorEvent(color));
  }

  void _hoverColorOnChanged(MyoroButtonWidgetShowcaseBloc bloc, Color? color) {
    bloc.add(SetHoverBorderColorEvent(color));
  }

  void _tapColorOnChanged(MyoroButtonWidgetShowcaseBloc bloc, Color? color) {
    bloc.add(SetTapBorderColorEvent(color));
  }
}
