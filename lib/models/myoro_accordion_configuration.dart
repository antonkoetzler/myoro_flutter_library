import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration model of a [MyoroAccordion].
///
/// TODO: Needs to be tested.
class MyoroAccordionConfiguration extends Equatable {
  /// [ValueNotifier] controlling what [MyoroAccordionItem] is expanded.
  final MyoroAccordionNotifier? notifier;

  /// Items of the [MyoroAccordion].
  final List<MyoroAccordionItem> items;

  const MyoroAccordionConfiguration({this.notifier, required this.items});

  MyoroAccordionConfiguration copyWith({
    MyoroAccordionNotifier? notifier,
    List<MyoroAccordionItem>? items,
  }) {
    return MyoroAccordionConfiguration(
      notifier: notifier ?? this.notifier,
      items: items ?? this.items,
    );
  }

  @override
  List<Object?> get props {
    return [notifier, items];
  }

  @override
  String toString() =>
      'MyoroAccordionConfiguration(\n'
      '  notifier: $notifier,\n'
      '  items: $items,\n'
      ');';
}
