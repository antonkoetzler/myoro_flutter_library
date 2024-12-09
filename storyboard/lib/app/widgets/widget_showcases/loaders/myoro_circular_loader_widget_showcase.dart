// TODO

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroCircularLoader].
final class MyoroCircularLoaderWidgetShowcase extends StatelessWidget {
  const MyoroCircularLoaderWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroCircularLoaderWidgetShowcaseBloc(),
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
    return const MyoroCircularLoader();
  }
}

final class _WidgetOptions extends StatelessWidget {
  const _WidgetOptions();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const _ColorOption(),
        SizedBox(height: context.resolveThemeExtension<MyoroCircularLoaderWidgetShowcaseThemeExtension>().widgetOptionsSpacing),
        const _SizeOption(),
      ],
    );
  }
}

final class _ColorOption extends StatelessWidget {
  const _ColorOption();

  @override
  Widget build(BuildContext context) {
    // context.resolveBloc<MyoroCircularLoaderWidgetShowcaseBloc>().add(SetSizeEvent(...));
    return const Text('TODO');
  }
}

final class _SizeOption extends StatelessWidget {
  const _SizeOption();

  @override
  Widget build(BuildContext context) {
    // context.resolveBloc<MyoroCircularLoaderWidgetShowcaseBloc>().add(SetSizeEvent(...));
    return const Text('Todo');
  }
}
