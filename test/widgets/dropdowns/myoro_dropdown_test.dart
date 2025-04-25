import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/blocs/myoro_dropdown_bloc/myoro_dropdown_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets(
    '[MyoroSingularDropdown]: No optional [MyoroSingularDropdownConfiguration] parameters passed',
    (WidgetTester tester) async {
      final MyoroSingularDropdownConfiguration<String> configuration =
          _standardSingularConfiguration;
      final BuildContext context = await _pumpMyoroSingularDropdown(
        tester,
        configuration,
      );
      _expectCalls(tester, context, configuration);
    },
  );

  testWidgets(
    '[MyoroSingularDropdown]: [MyoroSingularDropdownConfiguration.checkboxOnChanged] passed',
    (WidgetTester tester) async {
      final MyoroSingularDropdownConfiguration<String> configuration =
          _standardSingularConfiguration.copyWith(
            checkboxOnChanged: (_, __) {},
          );
      final BuildContext context = await _pumpMyoroSingularDropdown(
        tester,
        configuration,
      );
      _expectCalls(tester, context, configuration);
    },
  );
}

Future<BuildContext> _pumpMyoroSingularDropdown(
  WidgetTester tester,
  MyoroSingularDropdownConfiguration<String> configuration,
) async {
  late final BuildContext context;
  await tester.pumpWidget(
    MyoroWidgetTester(
      child: Builder(
        builder: (BuildContext buildContext) {
          context = buildContext;
          return MyoroSingularDropdown<String>(configuration: configuration);
        },
      ),
    ),
  );
  await tester.pumpAndSettle();
  return context;
}

void _expectCalls(
  WidgetTester tester,
  BuildContext context,
  MyoroDropdownConfiguration<String> configuration,
) async {
  final dropdownThemeExtension =
      context.resolveThemeExtension<MyoroDropdownThemeExtension>();
  final inputThemeExtension =
      context.resolveThemeExtension<MyoroInputThemeExtension>();

  expect(find.byType(MyoroSingularDropdown<String>), findsOneWidget);

  // [_DropdownState]
  expect(
    find.byWidgetPredicate(
      (Widget w) =>
          w is BlocProvider<MyoroDropdownBloc<String>> &&
          w.child is RepaintBoundary &&
          (w.child as RepaintBoundary).child is Row &&
          ((w.child as RepaintBoundary).child as Row).spacing ==
              dropdownThemeExtension.spacing &&
          ((w.child as RepaintBoundary).child as Row).children.length ==
              (configuration.checkboxOnChangedNotNull ? 2 : 1),
    ),
    findsOneWidget,
  );

  // [_Checkbox]
  if (configuration.checkboxOnChangedNotNull) {
    expect(
      find.byType(
        BlocConsumer<MyoroDropdownBloc<String>, MyoroDropdownState<String>>,
      ),
      findsAtLeastNWidgets(1),
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroCheckbox &&
            w.initialValue == configuration.enabled &&
            w.onChanged != null,
      ),
      findsOneWidget,
    );
  }

  // [_InputState]
  expect(
    find.byWidgetPredicate(
      (Widget w) =>
          w is OverlayPortal &&
          w.child is Stack &&
          (w.child as Stack).children.length == 2,
    ),
    findsOneWidget,
  );
  expect(
    find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroInput &&
          w.configuration.label ==
              (configuration.label.isNotEmpty ? configuration.label : null) &&
          w.configuration.enabled == configuration.enabled &&
          w.configuration.readOnly == true &&
          w.configuration.showClearTextButton ==
              configuration.allowItemClearing &&
          w.configuration.onCleared != null &&
          w.configuration.controller != null,
    ),
    findsOneWidget,
  );

  // [_InputTriggerArea]
  expect(find.byType(ValueListenableBuilder<Size?>), findsOneWidget);
  expect(
    find.byWidgetPredicate(
      (Widget w) =>
          w is ClipRRect &&
          w.borderRadius == inputThemeExtension.borderRadius &&
          w.clipBehavior == Clip.hardEdge &&
          w.child is SizedBox &&
          (w.child as SizedBox).child
              is BlocBuilder<
                MyoroDropdownBloc<String>,
                MyoroDropdownState<String>
              >,
    ),
    findsOneWidget,
  );
  expect(
    find.byWidgetPredicate(
      (Widget w) =>
          w is Row && w.children.length == 1 && w.children.first is Expanded,
    ),
    findsAtLeastNWidgets(1),
  );

  // [_InputTriggerAreaRegion]
  final inputTriggerAreaRegionFinder = find.byWidgetPredicate(
    (Widget w) =>
        w is SizedBox &&
        w.child is MouseRegion &&
        (w.child as MouseRegion).child is GestureDetector &&
        ((w.child as MouseRegion).child as GestureDetector).child
            is TapRegion &&
        (((w.child as MouseRegion).child as GestureDetector).child as TapRegion)
                .child
            is Container &&
        ((((w.child as MouseRegion).child as GestureDetector).child
                            as TapRegion)
                        .child
                    as Container)
                .color ==
            Colors.transparent,
  );
  expect(inputTriggerAreaRegionFinder, findsOneWidget);

  // [_Menu]
  if (configuration.enabled) {
    await tester.tap(inputTriggerAreaRegionFinder);
    await tester.pumpAndSettle();
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is CallbackShortcuts &&
            w.child is Focus &&
            (w.child as Focus).autofocus &&
            (w.child as Focus).child is TapRegion &&
            ((w.child as Focus).child as TapRegion).child
                is BlocBuilder<
                  MyoroDropdownBloc<String>,
                  MyoroDropdownState<String>
                >,
      ),
      findsOneWidget,
    );
    expect(find.byType(MyoroMenu<String>), findsOneWidget);
  }
}

final _standardSingularConfiguration = MyoroSingularDropdownConfiguration(
  menuConfiguration: const MyoroMenuConfiguration(
    itemBuilder: _itemBuilder,
    request: _request,
  ),
  selectedItemBuilder: _selectedItemBuilder,
);

Set<String> _request() {
  return List.generate(
    faker.randomGenerator.integer(100),
    (int index) => '#$index ${faker.lorem.word()}',
  ).toSet();
}

MyoroMenuItem _itemBuilder(String item) {
  return MyoroMenuItem.fake().copyWith(
    textConfiguration: MyoroIconTextButtonTextConfiguration(text: item),
  );
}

String _selectedItemBuilder(String item) {
  return item;
}
