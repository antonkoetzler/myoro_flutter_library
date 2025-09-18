import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroMultiAccordion].
class MyoroMultiAccordionController extends MyoroAccordionController {
  MyoroMultiAccordionController({required MyoroMultiAccordionConfiguration configuration})
    : super(configuration: configuration, selectedItems: configuration.selectedItems);
}
