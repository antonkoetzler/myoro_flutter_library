import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_dropdown_widget_showcase_bloc/myoro_dropdown_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  testWidgets('MyoroMultiDropdownWidgetShowcase', (WidgetTester tester) async {
    final myoroMultiDropdownWidgetShowcaseKey = GlobalKey();
    late final MyoroDropdownWidgetShowcaseState myoroDropdownWidgetShowcaseBlocState;

    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: Builder(
            builder: (BuildContext context) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                myoroDropdownWidgetShowcaseBlocState = myoroMultiDropdownWidgetShowcaseKey.currentContext!.resolveBloc<MyoroDropdownWidgetShowcaseBloc>().state;
              });

              return MyoroMultiDropdownWidgetShowcase(widgetShowcaseKey: myoroMultiDropdownWidgetShowcaseKey);
            },
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroMultiDropdownWidgetShowcase), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is WidgetShowcase &&
            w.widgetOptions.length == 4 &&
            w.widgetOptions.first is MyoroDropdownWidgetShowcaseLabelOption &&
            w.widgetOptions[1] is MyoroDropdownWidgetShowcaseEnabledOption &&
            w.widgetOptions[2] is MyoroDropdownWidgetShowcaseAllowItemClearingOption &&
            w.widgetOptions[3] is MyoroDropdownWidgetShowcaseCheckboxOnChangedOption,
      ),
      findsOneWidget,
    );

    // [_Widget]
    expect(find.byType(BlocBuilder<MyoroDropdownWidgetShowcaseBloc, MyoroDropdownWidgetShowcaseState>), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroMultiDropdown &&
            w.configuration.label == myoroDropdownWidgetShowcaseBlocState.label &&
            w.configuration.enabled == myoroDropdownWidgetShowcaseBlocState.enabled &&
            w.configuration.allowItemClearing == myoroDropdownWidgetShowcaseBlocState.allowItemClearing,
      ),
      findsOneWidget,
    );
  });
}
