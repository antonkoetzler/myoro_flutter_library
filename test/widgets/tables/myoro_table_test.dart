// TODO: This widget is going to be redone in the future.
// import 'package:faker/faker.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:myoro_flutter_library/myoro_flutter_library.dart';
// import 'package:provider/provider.dart';

// /// Widget test of [MyoroTable].
// void main() {
//   final columnQuantity = faker.randomGenerator.integer(5, min: 1);

//   testWidgets('MyoroTable', (WidgetTester tester) async {
//     late final MyoroTableThemeExtension themeExtension;

//     await tester.pumpWidget(
//       MyoroWidgetTester(
//         child: Builder(
//           builder: (BuildContext context) {
//             themeExtension =
//                 context.resolveThemeExtension<MyoroTableThemeExtension>();

//             return MyoroTable<String>(
//               columns: List.generate(
//                 columnQuantity,
//                 (_) => MyoroTableColumn.fake(),
//               ),
//               rowBuilder:
//                   (String item) =>
//                       MyoroTableRow.fake(columnQuantity: columnQuantity),
//               dataConfiguration: MyoroDataConfiguration(
//                 staticItems: List.generate(
//                   faker.randomGenerator.integer(100),
//                   (int index) => '$index: ${faker.lorem.word()}',
//                 ),
//               ),
//               enableColumnResizing: true,
//               enableCheckboxes: true,
//               showPaginationControls: true,
//             );
//           },
//         ),
//       ),
//     );
//     await tester.pumpAndSettle();

//     expect(find.byType(MyoroTable<String>), findsOneWidget);

//     // [MyoroTable].
//     expect(find.byType(Provider<MyoroTableController<String>>), findsOneWidget);
//     expect(
//       find.byWidgetPredicate(
//         (Widget w) =>
//             w is Column &&
//             w.spacing == themeExtension.tableFooterSpacing &&
//             w.crossAxisAlignment == CrossAxisAlignment.end &&
//             w.children.length == 2 &&
//             w.children.first is Expanded &&
//             (w.children.first as Expanded).child is Container &&
//             ((w.children.first as Expanded).child as Container).decoration ==
//                 themeExtension.decoration &&
//             ((w.children.first as Expanded).child as Container).child
//                 is MyoroLayoutBuilder,
//         // w.children.last is _Footer,
//       ),
//       findsOneWidget,
//     );
//     expect(find.byType(ValueListenableBuilder<int>), findsOneWidget);
//     expect(
//       find.byWidgetPredicate(
//         (Widget w) =>
//             w is Column &&
//             w.children.length == 2 &&
//             // w.children.first is _TitleRow<String> &&
//             w.children.last is Expanded,
//         // (w.children.last as Expanded).child is _RowsSection,
//       ),
//       findsOneWidget,
//     );

//     // [_TitleRow].
//     expect(
//       find.byWidgetPredicate(
//         (Widget w) =>
//             w is SizedBox &&
//             w.height == themeExtension.titleRowHeight &&
//             w.child is Column &&
//             (w.child as Column).mainAxisSize == MainAxisSize.min &&
//             (w.child as Column).children.length == 2 &&
//             (w.child as Column).children.first is Flexible &&
//             ((w.child as Column).children.first as Flexible).child is Padding &&
//             (((w.child as Column).children.first as Flexible).child as Padding)
//                     .padding ==
//                 (columnQuantity > 1
//                     ? themeExtension.contentPadding.copyWith(top: 0, bottom: 0)
//                     : themeExtension.contentPadding) &&
//             (((w.child as Column).children.first as Flexible).child as Padding)
//                     .child
//                 is ValueListenableBuilder<MyoroTableColumn?> &&
//             (w.child as Column).children.last is MyoroBasicDivider &&
//             ((w.child as Column).children.last as MyoroBasicDivider)
//                     .configuration ==
//                 const MyoroBasicDividerConfiguration(
//                   direction: Axis.horizontal,
//                 ),
//       ),
//       findsOneWidget,
//     );
//     expect(
//       find.byWidgetPredicate(
//         (Widget w) =>
//             w is Row &&
//             w.children.length == columnQuantity &&
//             w.children.last is Expanded,
//       ),
//       findsAtLeastNWidgets(1),
//     );

//     // [_TitleColumn].
//     expect(
//       find.byWidgetPredicate(
//         (Widget w) => w is Padding && w.child is MyoroLayoutBuilder,
//       ),
//       findsAtLeastNWidgets(columnQuantity),
//     );
//     expect(
//       find.byType(ValueListenableBuilder<double>),
//       findsAtLeastNWidgets(columnQuantity),
//     );

//     // [_RowsSection].
//     expect(find.byType(MyoroResolver<List<String>>), findsOneWidget);

//     // [_Rows].
//     expect(find.byType(MyoroHoverButton), findsAtLeastNWidgets(columnQuantity));

//     // [_ItemsPerPageDropdown].
//     expect(find.byType(MyoroSingularDropdown<int>), findsOneWidget);

//     // [_PageControls].
//     expect(find.text('1'), findsOneWidget);
//   });
// }
