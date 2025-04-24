import 'package:bloc_test/bloc_test.dart';
import 'package:storyboard/app/blocs/myoro_bar_graph_widget_showcase_bloc/myoro_bar_graph_widget_showcase_bloc.dart';

/// Unit test of [MyoroBarGraphWidgetShowcaseBloc].
void main() {
  blocTest(
    'MyoroBarGraphWidgetShowcaseBloc.SetSortedEvent',
    build: () => MyoroBarGraphWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(const SetSortedEvent(false)),
    expect: () => const [MyoroBarGraphWidgetShowcaseState(sorted: false)],
  );
}
