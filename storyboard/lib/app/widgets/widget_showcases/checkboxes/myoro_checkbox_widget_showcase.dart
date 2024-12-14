import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_checkbox_widget_showcase_bloc/myoro_checkbox_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroCheckbox].
final class MyoroCheckboxWidgetShowcase extends StatelessWidget {
  const MyoroCheckboxWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroCheckboxWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [_LabelTextOption()],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<MyoroCheckboxWidgetShowcaseBloc, MyoroCheckboxWidgetShowcaseState>(
        builder: (_, MyoroCheckboxWidgetShowcaseState state) {
          return MyoroCheckbox(
            label: state.label,
          );
        },
      ),
    );
  }
}

final class _LabelTextOption extends StatelessWidget {
  const _LabelTextOption();

  @override
  Widget build(BuildContext context) {
    return MyoroInput(
      configuration: MyoroInputConfiguration(
        inputStyle: MyoroInputStyleEnum.outlined,
        label: 'Label text',
        onChanged: (String text) => context.resolveBloc<MyoroCheckboxWidgetShowcaseBloc>().add(
              SetLabelTextEvent(text),
            ),
      ),
    );
  }
}
