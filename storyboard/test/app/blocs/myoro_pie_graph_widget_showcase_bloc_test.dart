import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_pie_graph_widget_showcase_bloc/myoro_pie_graph_widget_showcase_bloc.dart';

/// Unit test of [MyoroPieGraphWidgetShowcaseBloc].
void main() {
  final MyoroPieGraphEnum typeEnum = MyoroPieGraphEnum.fake();
  final bool centerWidgetEnabled = faker.randomGenerator.boolean();

  blocTest(
    'MyoroPieGraphWidgetShowcaseBloc.SetTypeEnumEvent',
    build: () => MyoroPieGraphWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetTypeEnumEvent(typeEnum)),
    expect:
        () => [
          MyoroPieGraphWidgetShowcaseState(
            typeEnum: typeEnum,
            centerWidgetEnabled: typeEnum.isDonut,
          ),
        ],
  );

  blocTest(
    'MyoroPieGraphWidgetShowcaseBloc.SetCenterWidgetEnabledEvent',
    build: () => MyoroPieGraphWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetCenterWidgetEnabledEvent(centerWidgetEnabled)),
    expect:
        () => [
          MyoroPieGraphWidgetShowcaseState(
            centerWidgetEnabled: centerWidgetEnabled,
          ),
        ],
  );
}
