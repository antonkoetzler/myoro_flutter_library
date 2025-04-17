import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/blocs/myoro_menu_bloc/myoro_menu_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroMenu', (WidgetTester tester) async {
    final configuration = MyoroMenuConfiguration<String>(
      request: () => List.generate(faker.randomGenerator.integer(100), (int index) => '#$index: ${faker.lorem.word()}').toSet(),
      itemBuilder: (String item) => MyoroMenuItem.fake().copyWith(text: item),
    );

    late final MyoroMenuThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
            return MyoroMenu(configuration: configuration);
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroMenu<String>), findsOneWidget);

    // [_MyoroMenuState]
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Container &&
            w.decoration is BoxDecoration &&
            (w.decoration as BoxDecoration).color == themeExtension.primaryColor &&
            (w.decoration as BoxDecoration).border == themeExtension.border &&
            (w.decoration as BoxDecoration).borderRadius == themeExtension.borderRadius &&
            w.constraints == configuration.constraints &&
            w.child is BlocBuilder<MyoroMenuBloc<String>, MyoroMenuState<String>>,
      ),
      findsOneWidget,
    );

    // [_Items].
    final BorderRadius borderRadius = themeExtension.borderRadius;
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is ClipRRect &&
            w.clipBehavior == Clip.hardEdge &&
            w.borderRadius ==
                borderRadius.copyWith(
                  topLeft: Radius.circular(borderRadius.topLeft.x - 4),
                  topRight: Radius.circular(borderRadius.topLeft.x - 4),
                  bottomLeft: Radius.circular(borderRadius.topLeft.x - 4),
                  bottomRight: Radius.circular(borderRadius.topLeft.x - 4),
                ) &&
            w.child is Column &&
            (w.child as Column).mainAxisSize == MainAxisSize.min,
      ),
      findsOneWidget,
    );

    // [_SearchBar].
    if (configuration.searchCallback != null) {
      expect(
        find.byWidgetPredicate(
          (Widget w) =>
              w is Padding &&
              w.padding == themeExtension.searchBarPadding &&
              w.child is MyoroInput &&
              (w.child as MyoroInput).configuration.inputStyle == themeExtension.searchBarInputStyle &&
              (w.child as MyoroInput).configuration.autofocus == true,
        ),
        findsOneWidget,
      );
    }
  });
}
