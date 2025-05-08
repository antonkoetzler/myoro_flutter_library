import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/blocs/myoro_table_bloc/myoro_table_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroTable', (WidgetTester tester) async {
    late final MyoroTableThemeExtension tableThemeExtension;
    late final MyoroBasicDividerThemeExtension basicDividerThemeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            tableThemeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
            basicDividerThemeExtension =
                context.resolveThemeExtension<MyoroBasicDividerThemeExtension>();

            return MyoroTable<String>(
              configuration: MyoroTableConfiguration(
                request: () => _items,
                columns: _columns,
                rowBuilder: _rowBuilder,
              ),
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    // [_MyoroTableState]
    expect(find.byType(MyoroTable<String>), findsOneWidget);
    expect(find.byType(BlocProvider<MyoroTableBloc<String>>), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Container &&
            w.decoration == tableThemeExtension.decoration &&
            w.child is Column &&
            (w.child as Column).mainAxisSize == MainAxisSize.min &&
            (w.child as Column).children.length == 3 &&
            (w.child as Column).children.first is IntrinsicHeight &&
            (w.child as Column).children.last is Flexible,
      ),
      findsOneWidget,
    );

    // [_Columns]
    expect(find.byType(MyoroLayoutBuilder), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is ClipRRect &&
            w.clipBehavior == Clip.hardEdge &&
            w.borderRadius ==
                BorderRadius.only(
                  topLeft: (tableThemeExtension.decoration.borderRadius as BorderRadius).topLeft,
                  topRight: (tableThemeExtension.decoration.borderRadius as BorderRadius).topRight,
                ) &&
            w.child is Row,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is DefaultTextStyle && w.style == tableThemeExtension.columnTextStyle,
      ),
      findsNWidgets(_columns.length),
    );

    // [_Rows]
    expect(find.byType(ValueListenableBuilder<List<double>>), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is ClipRRect &&
            w.clipBehavior == Clip.hardEdge &&
            w.borderRadius ==
                BorderRadius.only(
                  bottomLeft:
                      (tableThemeExtension.decoration.borderRadius as BorderRadius).bottomLeft,
                  bottomRight:
                      (tableThemeExtension.decoration.borderRadius as BorderRadius).bottomRight,
                ) &&
            w.child is ListView,
      ),
      findsOneWidget,
    );

    // [_Row]
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is DefaultTextStyle &&
            w.style == tableThemeExtension.rowTextStyle &&
            w.child is MyoroButton &&
            (w.child as MyoroButton).configuration!.borderRadius == BorderRadius.zero,
      ),
      findsNWidgets(_items.length),
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Row &&
            w.spacing == tableThemeExtension.columnSpacing &&
            w.children.length == _columns.length,
      ),
      findsNWidgets(_items.length),
    );
  });
}

final Set<String> _items =
    List.generate(
      faker.randomGenerator.integer(100),
      (int index) => '$index${faker.randomGenerator.string(10)}',
    ).toSet();

MyoroTableColumn _createColumn(MyoroTableColumnWidthConfigurationEnum typeEnum) {
  final text = typeEnum.name;

  return MyoroTableColumn(
    tooltipMessage: faker.randomGenerator.boolean() ? text : null,
    widthConfiguration: MyoroTableColumnWidthConfiguration(
      typeEnum: typeEnum,
      fixedWidth: typeEnum.isFixed ? faker.randomGenerator.decimal(scale: 200) : null,
    ),
    child: Text(text),
  );
}

final List<MyoroTableColumn> _columns = [
  _createColumn(MyoroTableColumnWidthConfigurationEnum.expanded),
  _createColumn(MyoroTableColumnWidthConfigurationEnum.intrinsic),
  _createColumn(MyoroTableColumnWidthConfigurationEnum.fixed),
];

MyoroTableRow<String> _rowBuilder(_) {
  return MyoroTableRow(
    onTapDown: faker.randomGenerator.boolean() ? ((_) {}) : null,
    onTapUp: faker.randomGenerator.boolean() ? ((_) {}) : null,
    cells: List.generate(_columns.length, (_) => Text(faker.randomGenerator.string(10))),
  );
}
