import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final viewModel = MyoroBarGraphViewModel();

  test('MyoroBarGraphViewModel.configuration assertion case', () {
    expect(() => viewModel.configuration, throwsAssertionError);
  });

  testWidgets('getFormattedItems returns correctly formatted items', (tester) async {
    viewModel.configuration = MyoroBarGraphConfiguration(
      sorted: true,
      items: [
        MyoroBarGraphGroup(
          x: 2,
          bars: [
            MyoroBarGraphBar(
              y: 10,
              color: null,
              barSections: [
                MyoroBarGraphBarSection(fromY: 0, toY: 5, color: myoroFake<Color>()),
                MyoroBarGraphBarSection(fromY: 5, toY: 10, color: myoroFake<Color>()),
              ],
            ),
          ],
        ),
        MyoroBarGraphGroup(
          x: 1,
          bars: [MyoroBarGraphBar(y: 8, color: myoroFake<Color>(), barSections: [])],
        ),
      ],
    );

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (context) {
            final items = viewModel.getFormattedItems(context);

            expect(items.length, 2);
            expect(items[0].x, 1); // should be sorted
            expect(items[1].x, 2);
            expect(items[0].barRods[0].color, viewModel.configuration.items.last.bars.first.color);
            expect(items[1].barRods[0].rodStackItems.length, 2); // has stack items

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  });
}
