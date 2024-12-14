import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_circular_loader_widget_showcase_bloc/myoro_circular_loader_widget_showcase_bloc.dart';
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
        widgetOptions: [
          _ColorOption(),
          _SizeOption(),
        ],
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
