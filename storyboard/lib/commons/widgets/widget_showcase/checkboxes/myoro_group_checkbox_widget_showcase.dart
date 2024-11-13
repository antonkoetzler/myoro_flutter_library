import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

// TODO: Finish this.
/// Widget showcase for [MyoroGroupCheckbox].
final class MyoroGroupCheckboxWidgetShowcase extends StatelessWidget {
  const MyoroGroupCheckboxWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroGroupCheckboxWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: _WidgetOptions(),
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return MyoroGroupCheckbox(
      checkboxes: [MyoroGroupCheckboxItem(label: 'qwe')],
    );
  }
}

final class _WidgetOptions extends StatelessWidget {
  const _WidgetOptions();

  @override
  Widget build(BuildContext context) {
    return const Text('Help me');
  }
}
