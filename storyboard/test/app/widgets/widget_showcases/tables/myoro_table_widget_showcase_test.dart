import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroTableWidgetShowcase].
void main() {
  testWidgets('MyoroTableWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroTableWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroTableWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroTable<String>), findsOneWidget);
    expect(
      MyoroCheckbox.finder(
        label: '[MyoroTable.enableColumnResizing]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroCheckbox.finder(
        label: '[MyoroTable.enableCheckboxes]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroCheckbox.finder(
        label: '[MyoroTable.showPaginationControls]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
  });
}
