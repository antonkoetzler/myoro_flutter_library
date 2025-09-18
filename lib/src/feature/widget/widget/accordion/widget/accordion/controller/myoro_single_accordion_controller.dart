import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSingleAccordion].
class MyoroSingleAccordionController<T> extends MyoroAccordionController<T> {
  MyoroSingleAccordionController({required MyoroSingleAccordionConfiguration<T> configuration})
    : super(configuration: configuration, selectedItems: {?configuration.selectedItem});
}
