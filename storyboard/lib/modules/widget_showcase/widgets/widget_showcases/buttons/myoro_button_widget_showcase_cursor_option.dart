import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_button_widget_showcase_bloc/myoro_button_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Mouse cursor option of [MyoroButtonWidgetShowcase].
final class MyoroButtonWidgetShowcaseCursorOption extends StatelessWidget {
  const MyoroButtonWidgetShowcaseCursorOption({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroButtonWidgetShowcaseBloc>();

    return MouseCursorWidgetShowcaseOption(
      labelConfiguration: const WidgetShowcaseOptionLabelConfiguration(
        label: '[MyoroButtonConfiguration.cursor]',
      ),
      onChanged: (SystemMouseCursor? cursor) {
        return _onChanged(bloc, cursor);
      },
    );
  }

  void _onChanged(
    MyoroButtonWidgetShowcaseBloc bloc,
    SystemMouseCursor? cursor,
  ) {
    bloc.add(SetCursorEvent(cursor));
  }
}
