import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../test_exports.dart';

/// Widget test of [MyoroResolver].
void main() {
  testWidgets('MyoroResolver', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroResolver<Null>(
          request: () async => null,
          builder: (_, __, ___, ____) => const MyoroRadio(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroResolver<Null>), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is BlocProvider<MyoroResolverBloc<Null>> && w.child is BlocConsumer<MyoroResolverBloc<Null>, MyoroResolverState<Null>>,
      ),
      findsOneWidget,
    );
    expect(find.byType(MyoroRadio), findsOneWidget); // [Widget] returned in builder.
  });
}
