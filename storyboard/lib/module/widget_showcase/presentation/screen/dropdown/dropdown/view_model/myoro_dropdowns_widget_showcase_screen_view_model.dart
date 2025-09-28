import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_dropdowns_widget_showcase_screen_state.dart';

/// View model of [MyoroDropdownsWidgetShowcaseScreen].
final class MyoroDropdownsWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroDropdownsWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroDropdownsWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Builds the dropdown type option item builder.
  MyoroMenuItem dropdownTypeOptionItemBuilder(MyoroDropdownTypeEnum item) {
    return MyoroMenuItem(
      iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
        textConfiguration: MyoroTextConfiguration(text: dropdownTypeOptionSelectedItemBuilder(item)),
      ),
    );
  }

  /// Builds the dropdown type option selected item builder.
  String dropdownTypeOptionSelectedItemBuilder(MyoroDropdownTypeEnum item) {
    return item.name.capitalized;
  }

  /// [MyoroSingleDropdownConfiguration] builder.
  MyoroSingleDropdownConfiguration<String> buildSingleDropdownConfiguration() {
    final singleDropdownController = _state.singleDropdownController;
    final configuration = singleDropdownController.configuration;
    final menuConfiguration = configuration.menuConfiguration;
    final singleDropdownOverlayTargetKey = _state.singleDropdownOverlayTargetKey;
    return MyoroSingleDropdownConfiguration(
      menuConfiguration: menuConfiguration.copyWith(),
      targetKey: singleDropdownOverlayTargetKey,
      dropdownType: _state.dropdownType,
    );
  }

  /// [MyoroMultiDropdownConfiguration] builder.
  MyoroMultiDropdownConfiguration<String> buildMultiDropdownConfiguration() {
    final multiDropdownController = _state.multiDropdownController;
    final configuration = multiDropdownController.configuration;
    final menuConfiguration = configuration.menuConfiguration;
    final multiDropdownOverlayTargetKey = _state.multiDropdownOverlayTargetKey;
    return MyoroMultiDropdownConfiguration(
      menuConfiguration: menuConfiguration.copyWith(),
      targetKey: multiDropdownOverlayTargetKey,
      dropdownType: _state.dropdownType,
    );
  }
}
