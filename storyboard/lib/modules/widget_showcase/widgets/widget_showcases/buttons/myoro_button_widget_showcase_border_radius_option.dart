import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_button_widget_showcase_bloc/myoro_button_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// [BorderRadius] option of [MyoroButtonWidgetShowcase].
final class MyoroButtonWidgetShowcaseBorderRadiusOption extends StatelessWidget {
  static const _initialValue = 250.0;

  const MyoroButtonWidgetShowcaseBorderRadiusOption({super.key});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroButtonWidgetShowcaseThemeExtension>();
    final bloc = context.resolveBloc<MyoroButtonWidgetShowcaseBloc>();

    return BlocBuilder<MyoroButtonWidgetShowcaseBloc, MyoroButtonWidgetShowcaseState>(
      buildWhen: _buildWhen,
      builder: (_, state) => _builder(themeExtension, bloc, state),
    );
  }

  bool _buildWhen(MyoroButtonWidgetShowcaseState previous, MyoroButtonWidgetShowcaseState current) {
    return previous.borderRadius != current.borderRadius;
  }

  Widget _builder(
    MyoroButtonWidgetShowcaseThemeExtension themeExtension,
    MyoroButtonWidgetShowcaseBloc bloc,
    MyoroButtonWidgetShowcaseState state,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.spacing,
      children: [
        MyoroCheckbox(
          configuration: MyoroCheckboxConfiguration(
            label: '[MyoroButtonConfiguration.borderRadius]',
            onChanged: (bool value) => _checkboxOnChanged(bloc, value),
          ),
        ),
        MyoroSlider(
          configuration: MyoroSliderConfiguration(
            minValue: 0,
            maxValue: 500,
            initialValue: state.borderRadius ?? _initialValue,
            onChanged: (double value) => _sliderOnChanged(bloc, value),
          ),
        ),
      ],
    );
  }

  void _checkboxOnChanged(MyoroButtonWidgetShowcaseBloc bloc, bool customBorderRadiusEnabled) {
    bloc.add(SetBorderRadiusEvent(customBorderRadiusEnabled ? _initialValue : null));
  }

  void _sliderOnChanged(MyoroButtonWidgetShowcaseBloc bloc, double borderRadius) {
    bloc.add(SetBorderRadiusEvent(borderRadius));
  }
}
