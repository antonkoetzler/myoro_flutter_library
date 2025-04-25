import 'package:bloc_test/bloc_test.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_app_bar_widget_showcase_bloc/myoro_app_bar_widget_showcase_bloc.dart';

/// Unit test of [MyoroAppBarWidgetShowcaseBloc].
void main() {
  blocTest(
    'MyoroAppBarWidgetShowcaseBloc.ToggleBorderedEvent',
    build: () => MyoroAppBarWidgetShowcaseBloc(),
    act:
        (bloc) =>
            bloc
              ..add(const ToggleBorderedEvent())
              ..add(const ToggleBorderedEvent()),
    expect:
        () => const [
          MyoroAppBarWidgetShowcaseState(bordered: false),
          MyoroAppBarWidgetShowcaseState(bordered: true),
        ],
  );
}
