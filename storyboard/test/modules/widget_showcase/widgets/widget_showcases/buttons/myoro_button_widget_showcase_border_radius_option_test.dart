import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_button_widget_showcase_bloc/myoro_button_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  testWidgets('MyoroButtonWidgetShowcaseBorderRadiusOption', (WidgetTester tester) async {
    late final MyoroButtonWidgetShowcaseThemeExtension themeExtension;

    await tester.pumpWidget(
      StoryboardWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension =
                context.resolveThemeExtension<MyoroButtonWidgetShowcaseThemeExtension>();
            return BlocProvider(
              create: (_) => MyoroButtonWidgetShowcaseBloc(),
              child: const MyoroButtonWidgetShowcaseBorderRadiusOption(),
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroButtonWidgetShowcaseBorderRadiusOption), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Column &&
            w.mainAxisSize == MainAxisSize.min &&
            w.spacing == themeExtension.spacing &&
            w.children.length == 2 &&
            w.children.first is MyoroCheckbox &&
            (w.children.first as MyoroCheckbox).label ==
                '[MyoroButtonConfiguration.borderRadius]' &&
            w.children.last is MyoroSlider &&
            (w.children.last as MyoroSlider).minValue == 0 &&
            (w.children.last as MyoroSlider).maxValue == 500,
      ),
      findsOneWidget,
    );
  });
}
