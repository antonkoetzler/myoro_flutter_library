import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroGroupCheckbox].
final class MyoroGroupCheckboxWidgetShowcase extends StatelessWidget {
  const MyoroGroupCheckboxWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroGroupCheckboxWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [_DirectionOption()],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroGroupCheckboxWidgetShowcaseBloc, MyoroGroupCheckboxWidgetShowcaseState>(
      builder: (_, MyoroGroupCheckboxWidgetShowcaseState state) {
        return MyoroGroupCheckbox(
          checkboxes: state.checkboxes,
        );
      },
    );
  }
}

final class _DirectionOption extends StatelessWidget {
  const _DirectionOption();

  @override
  Widget build(BuildContext context) {
    return const MyoroCheckbox();
  }
}
