import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_button_widget_showcase_bloc/myoro_button_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// [MyoroButtonConfiguration.backgroundColorBuilder] option of [MyoroButtonWidgetShowcase].
final class MyoroButtonWidgetShowcaseBackgroundColorBuilderOption
    extends StatelessWidget {
  const MyoroButtonWidgetShowcaseBackgroundColorBuilderOption({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroButtonWidgetShowcaseBloc>();

    return BlocBuilder<
      MyoroButtonWidgetShowcaseBloc,
      MyoroButtonWidgetShowcaseState
    >(buildWhen: _buildWhen, builder: (_, state) => _builder(bloc, state));
  }

  bool _buildWhen(
    MyoroButtonWidgetShowcaseState previous,
    MyoroButtonWidgetShowcaseState current,
  ) {
    return previous.backgroundColorBuilderEnabled !=
        current.backgroundColorBuilderEnabled;
  }

  Widget _builder(
    MyoroButtonWidgetShowcaseBloc bloc,
    MyoroButtonWidgetShowcaseState state,
  ) {
    return MyoroTapStatusEnumWidgetShowcaseOption(
      configuration: MyoroTapStatusEnumWidgetShowcaseOptionConfiguration(
        labelConfiguration: WidgetShowcaseOptionLabelConfiguration(
          label: 'Background color builder',
          initialValue: state.backgroundColorBuilderEnabled,
          onChanged: (value) => _checkboxOnChanged(bloc, value),
        ),
        idleColorOnChanged: (color) => _idleColorOnChanged(bloc, color),
        hoverColorOnChanged: (color) => _hoverColorOnChanged(bloc, color),
        tapColorOnChanged: (color) => _tapColorOnChanged(bloc, color),
      ),
    );
  }

  void _checkboxOnChanged(
    MyoroButtonWidgetShowcaseBloc bloc,
    bool backgroundColorBuilderEnabled,
  ) {
    bloc.add(
      SetBackgroundColorBuilderEnabledEvent(backgroundColorBuilderEnabled),
    );
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
