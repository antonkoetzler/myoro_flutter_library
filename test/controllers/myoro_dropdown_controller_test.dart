import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/blocs/myoro_dropdown_bloc/myoro_dropdown_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final controller = MyoroDropdownController<String>();
  final bool enabled = faker.randomGenerator.boolean();
  final String item1 = '#1: ${faker.randomGenerator.string(50)}';
  final String item2 = '#2: ${faker.randomGenerator.string(50)}';

  blocTest(
    'MyoroDropdownController.toggleEnabled',
    build: () {
      controller.bloc = MyoroDropdownBloc<String>(enabled: enabled);
      return controller.bloc;
    },
    act: (_) {
      controller
        ..toggleEnabled()
        ..toggleEnabled()
        ..toggleEnabled(!enabled);
    },
    expect: () {
      return [MyoroDropdownState<String>(enabled: !enabled), MyoroDropdownState<String>(enabled: enabled), MyoroDropdownState<String>(enabled: !enabled)];
    },
  );

  blocTest(
    'MyoroDropdownController.toggleItem',
    build: () {
      controller.bloc = MyoroDropdownBloc<String>(enabled: enabled);
      return controller.bloc;
    },
    act: (_) {
      controller
        ..toggleItem(item1)
        ..toggleItem(item2)
        ..toggleItem(item1)
        ..toggleItem(item2)
        ..toggleItem(item1)
        ..toggleItem(item2);
    },
    expect: () {
      return [
        MyoroDropdownState<String>(enabled: enabled, selectedItems: {item1}),
        MyoroDropdownState<String>(enabled: enabled, selectedItems: {item1, item2}),
        MyoroDropdownState<String>(enabled: enabled, selectedItems: {item2}),
        MyoroDropdownState<String>(enabled: enabled, selectedItems: const {}),
        MyoroDropdownState<String>(enabled: enabled, selectedItems: {item1}),
        MyoroDropdownState<String>(enabled: enabled, selectedItems: {item1, item2}),
      ];
    },
  );

  blocTest(
    'MyoroDropdownController.clear',
    build: () {
      controller.bloc = MyoroDropdownBloc<String>(enabled: enabled);
      return controller.bloc;
    },
    act: (_) {
      controller
        ..toggleItem(item1)
        ..toggleItem(item2)
        ..clear();
    },
    expect: () {
      return [
        MyoroDropdownState<String>(enabled: enabled, selectedItems: {item1}),
        MyoroDropdownState<String>(enabled: enabled, selectedItems: {item1, item2}),
        MyoroDropdownState<String>(enabled: enabled, selectedItems: const {}),
      ];
    },
  );

  test('MyoroDropdownController.showMenu', () {
    expect(controller.overlayPortalController.isShowing, isFalse);
    controller.showMenu();
    expect(controller.overlayPortalController.isShowing, isTrue);
    controller.showMenu();
    expect(controller.overlayPortalController.isShowing, isTrue);
  });

  test('MyoroDropdownController.showMenu', () {
    expect(controller.overlayPortalController.isShowing, isTrue);
    controller.hideMenu();
    expect(controller.overlayPortalController.isShowing, isFalse);
    controller.hideMenu();
    expect(controller.overlayPortalController.isShowing, isFalse);
  });

  test('MyoroDropdownController.toggleMenu', () {
    expect(controller.overlayPortalController.isShowing, isFalse);
    controller.toggleMenu();
    expect(controller.overlayPortalController.isShowing, isTrue);
    controller.toggleMenu();
    expect(controller.overlayPortalController.isShowing, isFalse);
  });
}
