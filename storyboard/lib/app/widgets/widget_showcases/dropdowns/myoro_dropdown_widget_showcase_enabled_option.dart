import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_dropdown_widget_showcase_bloc/myoro_dropdown_widget_showcase_bloc.dart';

/// [SetEnabledEvent] of dropdown widget showcases.
final class MyoroDropdownWidgetShowcaseEnabledOption extends StatelessWidget {
  const MyoroDropdownWidgetShowcaseEnabledOption({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDropdownWidgetShowcaseBloc>();
    return MyoroCheckbox(
      label: 'MyoroDropdownConfiguration.enabled',
      initialValue: bloc.state.enabled,
      onChanged: (bool value) => _onChanged(bloc, value),
    );
  }

  void _onChanged(MyoroDropdownWidgetShowcaseBloc bloc, bool value) {
    bloc.add(SetEnabledEvent(value));
  }
}
