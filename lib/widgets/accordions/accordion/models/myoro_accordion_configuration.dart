part of '../myoro_accordion.dart';

/// Configuration model of a [MyoroAccordion].
class MyoroAccordionConfiguration extends Equatable {
  /// Items of the [MyoroAccordion].
  final List<MyoroAccordionItem> items;

  const MyoroAccordionConfiguration({required this.items})
    : assert(items.length > 0, '[MyoroAccordionConfiguration]: [items] cannot be empty.');

  MyoroAccordionConfiguration.fake()
    : items = List.generate(faker.randomGenerator.integer(10, min: 1), (_) => MyoroAccordionItem.fake());

  MyoroAccordionConfiguration copyWith({List<MyoroAccordionItem>? items}) {
    return MyoroAccordionConfiguration(items: items ?? this.items);
  }

  @override
  List<Object?> get props {
    return [items];
  }

  @override
  String toString() =>
      'MyoroAccordionConfiguration(\n'
      '  items: $items,\n'
      ');';
}
