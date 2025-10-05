import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_input_dropdowns_widget_showcase_screen_state.dart';

/// View model of [MyoroInputDropdownsWidgetShowcaseScreen].
final class MyoroInputDropdownsWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroInputDropdownsWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroInputDropdownsWidgetShowcaseScreenState get state => _state;

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

  /// [MyoroSingleInputDropdownConfiguration] builder.
  MyoroSingleInputDropdownConfiguration<String> get singleConfiguration {
    final singleInputDropdownController = _state.singleInputDropdownController;
    final configuration = singleInputDropdownController.configuration;
    final menuConfiguration = configuration.menuConfiguration;
    return MyoroSingleInputDropdownConfiguration(
      dropdownType: _state.dropdownType,
      menuConfiguration: menuConfiguration,
      selectedItemBuilder: configuration.selectedItemBuilder,
    );
  }

  /// [MyoroMultiInputDropdownConfiguration] builder.
  MyoroMultiInputDropdownConfiguration<String> get multiConfiguration {
    final multiInputDropdownController = _state.multiInputDropdownController;
    final configuration = multiInputDropdownController.configuration;
    final menuConfiguration = configuration.menuConfiguration;
    return MyoroMultiInputDropdownConfiguration(
      dropdownType: _state.dropdownType,
      menuConfiguration: menuConfiguration,
      selectedItemBuilder: configuration.selectedItemBuilder,
    );
  }
}
