import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroMultiAccordion].
class MyoroMultiAccordionController<T> extends MyoroAccordionController<T> {
  MyoroMultiAccordionController({required MyoroMultiAccordionConfiguration<T> configuration})
    : super(configuration: configuration, selectedItems: configuration.selectedItems);
}
