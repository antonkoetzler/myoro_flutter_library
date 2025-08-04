import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_tab_view_configuration.g.dart';

/// Configuration model of [MyoroTabView].
@immutable
@myoroModel
final class MyoroTabViewConfiguration with _$MyoroTabViewConfigurationMixin {
  static const initiallySelectedTabIndexDefaultValue = 0;

  const MyoroTabViewConfiguration({
    this.initiallySelectedTabIndex = initiallySelectedTabIndexDefaultValue,
    this.tabButtonIconSize,
    this.tabButtonTextStyle,
    required this.tabs,
  }) : assert(tabs.length > 0, '[MyoroTabViewConfiguration]: [tabs] cannot be empty.');

  // coverage:ignore-start
  factory MyoroTabViewConfiguration.fake() {
    final tabs = List.generate(faker.randomGenerator.integer(5, min: 1), (_) => MyoroTabViewTab.fake());
    return MyoroTabViewConfiguration(initiallySelectedTabIndex: faker.randomGenerator.integer(tabs.length), tabs: tabs);
  }
  // coverage:ignore-end

  /// Initially selected [MyoroTabViewTab].
  final int initiallySelectedTabIndex;

  /// [IconData] size of the tabs.
  final double? tabButtonIconSize;

  /// [TextStyle] of the tabs.
  final TextStyle? tabButtonTextStyle;

  /// Tabs of the [MyoroTabView].
  final List<MyoroTabViewTab> tabs;
}
