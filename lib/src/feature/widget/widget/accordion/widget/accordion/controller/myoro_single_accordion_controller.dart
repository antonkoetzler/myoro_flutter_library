import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSingleAccordion].
class MyoroSingleAccordionController extends MyoroAccordionController {
  MyoroSingleAccordionController({required MyoroSingleAccordionConfiguration configuration})
    : super(configuration: configuration, selectedItems: {?configuration.selectedItem});
}
