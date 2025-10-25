part of 'myoro_dropdowns_widget_showcase_screen_view_model.dart';

/// State of [MyoroDropdownsWidgetShowcaseScreenViewModel].
final class MyoroDropdownsWidgetShowcaseScreenState extends ChangeNotifier {
  /// Items of each dropdown.
  final _items = List.generate(faker.randomGenerator.integer(100, min: 5), (i) => 'Item #$i').toSet();

  /// [MyoroSingleDropdownController] of the [MyoroSingleDropdown].
  late final _singleDropdownController = MyoroSingleDropdownController(
    configuration: MyoroSingleDropdownConfiguration(
      dropdownType: MyoroDropdownTypeEnum.expanding,
      menuConfiguration: MyoroSingleMenuConfiguration(request: () => _items, itemBuilder: _itemBuilder),
    ),
  );

  /// [MyoroMultiDropdownController] of the [MyoroMultiDropdown].
  late final _multiDropdownController = MyoroMultiDropdownController(
    configuration: MyoroMultiDropdownConfiguration(
      dropdownType: MyoroDropdownTypeEnum.expanding,
      menuConfiguration: MyoroMultiMenuConfiguration(request: () => _items, itemBuilder: _itemBuilder),
    ),
  );

  /// [MyoroDropdownConfiguration.dropdownType]
  MyoroDropdownTypeEnum _dropdownType = MyoroDropdownTypeEnum.expanding;

  /// [MyoroSingleDropdownConfiguration.overlayTargetKey]
  final _singleDropdownOverlayTargetKey = GlobalKey();

  /// [MyoroMultiDropdownConfiguration.overlayTargetKey]
  final _multiDropdownOverlayTargetKey = GlobalKey();

  /// Dispose function.
  @override
  void dispose() {
    _singleDropdownController.dispose();
    _multiDropdownController.dispose();
    super.dispose();
  }

  /// [MyoroMenuItem] builder.
  MyoroMenuItem _itemBuilder(String item) {
    return MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: item));
  }

  /// [_singleDropdownController] getter.
  MyoroSingleDropdownController<String> get singleDropdownController {
    return _singleDropdownController;
  }

  /// [_multiDropdownController] getter.
  MyoroMultiDropdownController<String> get multiDropdownController {
    return _multiDropdownController;
  }

  /// [_dropdownType] getter.
  MyoroDropdownTypeEnum get dropdownType {
    return _dropdownType;
  }

  /// [_singleDropdownOverlayTargetKey] getter.
  GlobalKey get singleDropdownOverlayTargetKey {
    return _singleDropdownOverlayTargetKey;
  }

  /// [_multiDropdownOverlayTargetKey] getter.
  GlobalKey get multiDropdownOverlayTargetKey {
    return _multiDropdownOverlayTargetKey;
  }

  /// [_dropdownType] setter.
  set dropdownType(MyoroDropdownTypeEnum dropdownType) {
    if (_dropdownType == dropdownType) return;
    _dropdownType = dropdownType;
    notifyListeners();
  }
}
