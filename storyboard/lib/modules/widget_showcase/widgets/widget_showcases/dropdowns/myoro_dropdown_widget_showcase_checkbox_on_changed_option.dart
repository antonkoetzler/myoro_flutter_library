import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_dropdown_widget_showcase_bloc/myoro_dropdown_widget_showcase_bloc.dart';

/// [SetCheckboxOnChangedEnabledEvent] of dropdown widget showcases.
final class MyoroDropdownWidgetShowcaseCheckboxOnChangedOption extends StatelessWidget {
  const MyoroDropdownWidgetShowcaseCheckboxOnChangedOption({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDropdownWidgetShowcaseBloc>();
    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Checkbox enabled?',
        initialValue: bloc.state.checkboxOnChangedEnabled,
        onChanged: (bool value) => _onChanged(bloc, value),
      ),
    );
  }

  void _onChanged(MyoroDropdownWidgetShowcaseBloc bloc, bool value) {
    bloc.add(SetCheckboxOnChangedEnabledEvent(value));
  }
}
