import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

void main() {
  final customColor = myoroFake<Color>();

  testWidgets('MyoroPieGraphViewModel', (tester) async {
    final config = MyoroPieGraphConfiguration(
      typeEnum: MyoroPieGraphEnum.fake(),
      items: [
        MyoroPieGraphItem(value: 10, color: customColor, radius: 30),
        const MyoroPieGraphItem(value: 20, color: null, radius: null),
      ],
    );

    final viewModel = MyoroPieGraphViewModel(configuration: config);

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: InheritedProvider.value(
          value: const MyoroPieGraphStyle(),
          child: Builder(
            builder: (context) {
              final sections = viewModel.createSections(context);

              expect(sections.length, 2);

              expect(sections[0].value, 10);
              expect(sections[0].color, customColor);
              expect(sections[0].radius, 30);
              expect(sections[0].showTitle, false);

              expect(sections[1].value, 20);
              expect(sections[1].color, isNotNull); // fallback to theme
              expect(sections[1].radius, isNonZero); // fallback to theme
              expect(sections[1].showTitle, false);

              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  });
}
