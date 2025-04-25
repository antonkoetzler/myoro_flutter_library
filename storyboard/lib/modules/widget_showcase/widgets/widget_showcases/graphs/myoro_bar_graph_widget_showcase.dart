import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_bar_graph_widget_showcase_bloc/myoro_bar_graph_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroBarGraph].
final class MyoroBarGraphWidgetShowcase extends StatelessWidget {
  const MyoroBarGraphWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroBarGraphWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [_SortedOption()],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      MyoroBarGraphWidgetShowcaseBloc,
      MyoroBarGraphWidgetShowcaseState
    >(
      builder: (_, MyoroBarGraphWidgetShowcaseState state) {
        return MyoroBarGraph(
          sorted: state.sorted,
          items: List.generate(
            faker.randomGenerator.integer(10, min: 1),
            (_) => MyoroBarGraphGroup(
              x: faker.randomGenerator.integer(100),
              bars: List.generate(
                faker.randomGenerator.integer(5),
                (_) => MyoroBarGraphBar(
                  y: faker.randomGenerator.decimal(),
                  color:
                      [Colors.red, Colors.green, Colors.blue][faker
                          .randomGenerator
                          .integer(3)],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

final class _SortedOption extends StatelessWidget {
  const _SortedOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroBarGraphWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroBarGraph.sorted]',
      initialValue: bloc.state.sorted,
      onChanged: (bool value) => bloc.add(SetSortedEvent(value)),
    );
  }
}
