part of '../myoro_pie_graph.dart';

/// Configuration of [MyoroPieGraph].
class MyoroPieGraphConfiguration extends Equatable {
  /// Pie/donut enum.
  final MyoroPieGraphEnum typeEnum;

  /// If [typeEnum] is [MyoroPieGraphEnum.donut],
  /// this will place a [Widget] inside of the graph.
  final Widget? centerWidget;

  /// Items of the graph.
  final List<MyoroPieGraphItem> items;

  const MyoroPieGraphConfiguration({required this.typeEnum, this.centerWidget, required this.items})
    : assert(
        (typeEnum == MyoroPieGraphEnum.pie) ? centerWidget == null : true,
        '[MyoroPieGraph]: If [typeEnum.isPie] is [true], [centerWidget] cannot be provided.',
      );

  factory MyoroPieGraphConfiguration.fake() {
    final typeEnum = MyoroPieGraphEnum.fake();

    return MyoroPieGraphConfiguration(
      typeEnum: typeEnum,
      centerWidget: typeEnum.isPie ? null : const SizedBox.shrink(),
      items: List.generate(faker.randomGenerator.integer(10), (_) => MyoroPieGraphItem.fake()),
    );
  }

  MyoroPieGraphConfiguration copyWith({
    MyoroPieGraphEnum? typeEnum,
    Widget? centerWidget,
    bool centerWidgetProvided = true,
    List<MyoroPieGraphItem>? items,
  }) {
    return MyoroPieGraphConfiguration(
      typeEnum: typeEnum ?? this.typeEnum,
      centerWidget: centerWidgetProvided ? (centerWidget ?? this.centerWidget) : null,
      items: items ?? this.items,
    );
  }

  @override
  List<Object?> get props {
    return [typeEnum, centerWidget, items];
  }

  @override
  String toString() =>
      'MyoroPieGraphConfiguration(\n'
      '  typeEnum: $typeEnum,\n'
      '  centerWidget: $centerWidget,\n'
      '  items: $items,\n'
      ');';
}
