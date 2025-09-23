part of 'bundle/myoro_accordion_bundle.dart';

/// Multi accordion of MFL.
class MyoroMultiAccordion<T> extends StatelessWidget {
  const MyoroMultiAccordion({super.key, this.style = const MyoroAccordionStyle(), this.controller, this.configuration});

  /// Style.
  final MyoroAccordionStyle style;

  /// Controller.
  final MyoroMultiAccordionController<T>? controller;

  /// Configuration.
  final MyoroMultiAccordionConfiguration<T>? configuration;

  @override
  Widget build(context) {
    return _Base(style, controller, configuration, configuration!.selectedItems);
  }
}
