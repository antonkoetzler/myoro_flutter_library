import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_snack_bar_widget_showcase_bloc/myoro_snack_bar_widget_showcase_bloc.dart';

/// Unit test of [MyoroSnackBarWidgetShowcaseBloc].
void main() {
  final MyoroSnackBarTypeEnum snackBarType = MyoroSnackBarTypeEnum.fake();
  final bool showCloseButton = faker.randomGenerator.boolean();
  final String message = faker.randomGenerator.string(50, min: 0);
  final bool childEnabled = faker.randomGenerator.boolean();

  blocTest(
    'MyoroSnackBarWidgetShowcaseBloc.SetSnackBarTypeEvent',
    build: () => MyoroSnackBarWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetSnackBarTypeEvent(snackBarType)),
    expect:
        () => [MyoroSnackBarWidgetShowcaseState(snackBarType: snackBarType)],
  );

  blocTest(
    'MyoroSnackBarWidgetShowcaseBloc.SetShowCloseButtonEvent',
    build: () => MyoroSnackBarWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetShowCloseButtonEvent(showCloseButton)),
    expect:
        () => [
          MyoroSnackBarWidgetShowcaseState(showCloseButton: showCloseButton),
        ],
  );

  blocTest(
    'MyoroSnackBarWidgetShowcaseBloc.SetMessageEvent',
    build: () => MyoroSnackBarWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetMessageEvent(message)),
    expect:
        () => [
          MyoroSnackBarWidgetShowcaseState(
            message: message,
            childEnabled: message.isEmpty,
          ),
        ],
  );

  blocTest(
    'MyoroSnackBarWidgetShowcaseBloc.SetChildEnabledEvent',
    build: () => MyoroSnackBarWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetChildEnabledEvent(childEnabled)),
    expect:
        () => [
          MyoroSnackBarWidgetShowcaseState(
            message: childEnabled ? '' : 'Hello, World!',
            childEnabled: childEnabled,
          ),
        ],
  );
}
