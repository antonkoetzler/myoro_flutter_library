import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_dropdown_widget_showcase_bloc/myoro_dropdown_widget_showcase_bloc.dart';

/// [MyoroDropdownConfiguration.menuMaxHeight] option in dropdown widget showcases.
final class MyoroDropdownWidgetShowcaseMenuMaxHeightOption
    extends StatelessWidget {
  const MyoroDropdownWidgetShowcaseMenuMaxHeightOption({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDropdownWidgetShowcaseBloc>();
    return MyoroSlider(
      label: 'MyoroDropdownConfiguration.menuMaxHeight',
      initialValue: bloc.state.menuMaxHeight,
      minValue: MyoroDropdownWidgetShowcaseState.menuMaxHeightMinValue,
      maxValue: MyoroDropdownWidgetShowcaseState.menuMaxHeightMaxValue,
      onChanged: (double value) => _onChanged(bloc, value),
    );
  }

  void _onChanged(MyoroDropdownWidgetShowcaseBloc bloc, double value) {
    bloc.add(SetMenuMaxHeightEvent(value));
  }
}
