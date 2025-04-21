import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration model of a [MyoroAccordion].
///
/// TODO: Needs to be tested.
class MyoroAccordionConfiguration extends Equatable {
  /// Items of the [MyoroAccordion].
  final List<MyoroAccordionItem> items;

  const MyoroAccordionConfiguration({required this.items});

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
