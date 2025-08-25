import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_menus_widget_showcase_screen_state.dart';

/// View model of [MyoroMenusWidgetShowcaseScreen].
final class MyoroMenusWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroMenusWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroMenusWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Builds the [MyoroSingularMenuConfiguration].
  MyoroSingularMenuConfiguration<String> singluarMenuConfiguration(BuildContext context) {
    return MyoroSingularMenuConfiguration(
      constraints: state.constraints,
      backgroundColor: state.backgroundColor,
      border: border(context),
      borderRadius: BorderRadius.circular(state.borderRadius),
      request: _request,
      itemBuilder: _itemBuilder,
    );
  }

  /// Builds the [MyoroMultiMenuConfiguration].
  MyoroMultiMenuConfiguration<String> multiMenuConfiguration(BuildContext context) {
    return MyoroMultiMenuConfiguration(
      constraints: state.constraints,
      backgroundColor: state.backgroundColor,
      border: border(context),
      borderRadius: BorderRadius.circular(state.borderRadius),
      request: _request,
      itemBuilder: _itemBuilder,
    );
  }

  /// Getter of the [BoxBorder].
  BoxBorder? border(BuildContext context) {
    return state.borderEnabled ? MyoroButtonStyleEnum.border(context) : null;
  }

  /// [MyoroMenuConfiguration.request]
  Future<Set<String>> _request() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return List.generate(faker.randomGenerator.integer(10), (i) => 'Item #$i').toSet();
  }

  /// [MyoroMenuConfiguration.itemBuilder]
  MyoroMenuItem _itemBuilder(String item) {
    return MyoroMenuItem(
      iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
        textConfiguration: MyoroTextConfiguration(text: item),
      ),
    );
  }
}
