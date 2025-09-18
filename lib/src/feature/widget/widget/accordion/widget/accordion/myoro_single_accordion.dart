part of 'bundle/myoro_accordion_bundle.dart';

/// Accordion of MFL.
class MyoroSingleAccordion<T> extends StatelessWidget {
  const MyoroSingleAccordion({super.key, this.themeExtension, this.controller, this.configuration});

  /// Style.
  final MyoroAccordionThemeExtension? themeExtension;

  /// Controller.
  final MyoroSingleAccordionController<T>? controller;

  /// Configuration.
  final MyoroSingleAccordionConfiguration<T>? configuration;

  @override
  Widget build(context) {
    return _Base(themeExtension, controller, configuration, {?configuration!.selectedItem});
  }
}
