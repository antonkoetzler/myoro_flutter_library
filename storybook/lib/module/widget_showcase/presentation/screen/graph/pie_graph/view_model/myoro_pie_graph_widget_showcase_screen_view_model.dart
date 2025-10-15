import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroPieGraphWidgetShowcaseScreen].
final class MyoroPieGraphWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroPieGraphWidgetShowcaseScreenState();
  MyoroPieGraphWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroPieGraphConfiguration] of the [MyoroPieGraph].
  MyoroPieGraphConfiguration buildConfiguration(Widget centerWidget) {
    return MyoroPieGraphConfiguration(
      typeEnum: _state.typeEnum,
      centerWidget: _state.centerWidgetEnabled ? centerWidget : null,
      items: List.generate(faker.randomGenerator.integer(5), (_) => MyoroPieGraphItem.fake()),
    );
  }

  /// [MyoroSingleDropdownConfiguration.selectedItemBuilder] of [_TypeEnumOption].
  String typeEnumOptionSelectedItemBuilder(MyoroPieGraphEnum item) {
    return _formattedTypeEnumName(item);
  }

  /// [MyoroMenuConfiguration.itemBuilder] of [_TypeEnumOption].
  MyoroMenuItem typeEnumOptionItemBuilder(MyoroPieGraphEnum item) {
    return MyoroMenuItem(
      iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
        textConfiguration: MyoroTextConfiguration(text: _formattedTypeEnumName(item)),
      ),
    );
  }

  /// Formatted name of a [MyoroPieGraphEnum].
  String _formattedTypeEnumName(MyoroPieGraphEnum typeEnum) {
    final name = typeEnum.name;
    return '${name[0].toUpperCase()}${name.substring(1)}';
  }
}
