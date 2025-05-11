import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_button_widget_showcase_bloc/myoro_button_widget_showcase_bloc.dart';

/// [MyoroButtonConfiguration.onTapUp] option of [MyoroButtonWidgetShowcase].
final class MyoroButtonWidgetShowcaseOnTapUpOption extends StatelessWidget {
  const MyoroButtonWidgetShowcaseOnTapUpOption({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroButtonWidgetShowcaseBloc>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: '[MyoroButtonConfiguration.onTapUp]',
        onChanged: (value) => _onChanged(bloc, value),
      ),
    );
  }

  void _onChanged(MyoroButtonWidgetShowcaseBloc bloc, bool value) {
    bloc.add(SetOnTapUpEnabledEvent(value));
  }
}
