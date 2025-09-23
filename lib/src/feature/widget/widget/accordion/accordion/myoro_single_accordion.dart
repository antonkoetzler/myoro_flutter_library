part of 'bundle/myoro_accordion_bundle.dart';

/// Accordion of MFL.
class MyoroSingleAccordion<T> extends StatelessWidget {
  const MyoroSingleAccordion({
    super.key,
    this.style = const MyoroAccordionStyle(),
    this.controller,
    this.configuration,
  });

  /// Style.
  final MyoroAccordionStyle style;

  /// Controller.
  final MyoroSingleAccordionController<T>? controller;

  /// Configuration.
  final MyoroSingleAccordionConfiguration<T>? configuration;

  @override
  Widget build(context) {
    return _Base(style, controller, configuration, {?configuration!.selectedItem});
  }
}
