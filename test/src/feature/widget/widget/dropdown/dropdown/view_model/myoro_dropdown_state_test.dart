import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 1), (int index) => 'Item #$index').toSet();

  group('MyoroDropdownState', () {
    late MyoroDropdownState<String, MyoroSingleDropdownConfiguration<String>> state;
    late MyoroSingleDropdownConfiguration<String> configuration;

    setUp(() {
      configuration = MyoroSingleDropdownConfiguration<String>(
        menuConfiguration: MyoroSingleMenuConfiguration<String>(
          request: () => items,
          itemBuilder: (item) => MyoroMenuItem(
            iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
              textConfiguration: MyoroTextConfiguration(text: item),
            ),
          ),
        ),
      );
      state = MyoroDropdownState<String, MyoroSingleDropdownConfiguration<String>>(configuration);
    });

    tearDown(() {
      state.dispose();
    });

    test('constructor with configuration', () {
      expect(state.configuration, configuration);
      expect(state.showing, isFalse);
      expect(state.targetKeySize, isNull);
    });

    test('configuration setter', () {
      final newConfiguration = MyoroSingleDropdownConfiguration<String>(
        menuConfiguration: MyoroSingleMenuConfiguration<String>(
          request: () => items,
          itemBuilder: (item) => MyoroMenuItem(
            iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
              textConfiguration: MyoroTextConfiguration(text: item),
            ),
          ),
        ),
      );
      state.configuration = newConfiguration;
      expect(state.configuration, newConfiguration);
    });

    test('overlayPortalController getter for overlay type', () {
      final overlayConfiguration = MyoroSingleDropdownConfiguration<String>(
        dropdownType: MyoroDropdownTypeEnum.overlay,
        menuConfiguration: MyoroSingleMenuConfiguration<String>(
          request: () => items,
          itemBuilder: (item) => MyoroMenuItem(
            iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
              textConfiguration: MyoroTextConfiguration(text: item),
            ),
          ),
        ),
      );
      state.configuration = overlayConfiguration;
      state.overlayPortalController = OverlayPortalController();
      expect(state.overlayPortalController, isA<OverlayPortalController>());
    });

    test('overlayPortalController getter for non-overlay type', () {
      expect(() => state.overlayPortalController, throwsAssertionError);
    });

    test('link getter', () {
      expect(state.link, isA<LayerLink>());
    });

    test('showingController getter', () {
      expect(state.showingController, isA<ValueNotifier<bool>>());
      expect(state.showingController.value, isFalse);
    });

    test('showing getter', () {
      expect(state.showing, isFalse);
      state.showingController.value = true;
      expect(state.showing, isTrue);
    });

    test('showing setter', () {
      expect(state.showing, isFalse);
      state.showing = true;
      expect(state.showing, isTrue);
      state.showing = false;
      expect(state.showing, isFalse);
    });

    test('overlayPortalController setter', () {
      final controller = OverlayPortalController();
      state.overlayPortalController = controller;
      expect(state.overlayPortalController, controller);
    });

    test('targetKeySize setter', () {
      const size = Size(100, 50);
      state.targetKeySize = size;
      expect(state.targetKeySize, size);
    });

    test('tapRegionGroupId getter', () {
      expect(state.tapRegionGroupId, isA<String>());
      expect(state.tapRegionGroupId, startsWith('MyoroDropdown#'));
    });

    test('dispose method', () {
      expect(() => state.dispose(), returnsNormally);
    });
  });
}
