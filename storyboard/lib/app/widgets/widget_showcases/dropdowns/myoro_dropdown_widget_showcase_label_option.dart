import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_dropdown_widget_showcase_bloc/myoro_dropdown_widget_showcase_bloc.dart';

/// [SetLabelEvent] option for dropdown widget showcases.
final class MyoroDropdownWidgetShowcaseLabelOption extends StatelessWidget {
  const MyoroDropdownWidgetShowcaseLabelOption({super.key});

  @override
  Widget build(BuildContext context) {
    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: 'MyoroDropdownConfiguration.label',
        onChanged: (String text) => _onChanged(context, text),
      ),
    );
  }

  void _onChanged(BuildContext context, String text) {
    final bloc = context.resolveBloc<MyoroDropdownWidgetShowcaseBloc>();
    bloc.add(SetLabelEvent(text));
  }
}
