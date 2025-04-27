import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_button_widget_showcase_bloc/myoro_button_widget_showcase_bloc.dart';

/// [MyoroButtonConfiguration.onTapDown] option of [MyoroButtonWidgetShowcase].
final class MyoroButtonWidgetShowcaseOnTapDownOption extends StatelessWidget {
  const MyoroButtonWidgetShowcaseOnTapDownOption({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroButtonWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroButtonConfiguration.onTapDown]',
      onChanged: (value) => _onChanged(bloc, value),
    );
  }

  void _onChanged(MyoroButtonWidgetShowcaseBloc bloc, bool value) {
    bloc.add(SetOnTapDownEnabledEvent(value));
  }
}
