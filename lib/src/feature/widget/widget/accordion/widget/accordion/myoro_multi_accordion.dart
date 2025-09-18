part of 'bundle/myoro_accordion_bundle.dart';

/// Multi accordion of MFL.
class MyoroMultiAccordion<T> extends StatelessWidget {
  const MyoroMultiAccordion({super.key, this.themeExtension, this.controller, this.configuration});

  /// Style.
  final MyoroAccordionThemeExtension? themeExtension;

  /// Controller.
  final MyoroMultiAccordionController<T>? controller;

  /// Configuration.
  final MyoroMultiAccordionConfiguration<T>? configuration;

  @override
  Widget build(context) {
    return _Base(themeExtension, controller, configuration, configuration!.selectedItems);
  }
}
