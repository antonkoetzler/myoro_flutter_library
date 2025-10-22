part of 'myoro_input_dropdowns_widget_showcase_screen_view_model.dart';

/// State of [MyoroInputDropdownsWidgetShowcaseScreenViewModel].
final class MyoroInputDropdownsWidgetShowcaseScreenState extends ChangeNotifier {
  /// Items of each input dropdown.
  final _items = List.generate(faker.randomGenerator.integer(100, min: 5), (i) => 'Item #$i').toSet();

  /// [MyoroSingleInputDropdownController] of the [MyoroSingleInputDropdown].
  late final _singleInputDropdownController = MyoroSingleInputDropdownController(
    configuration: MyoroSingleInputDropdownConfiguration(
      dropdownType: MyoroDropdownTypeEnum.overlay,
      menuConfiguration: MyoroSingleMenuConfiguration(request: () => _items, itemBuilder: _itemBuilder),
      selectedItemBuilder: (item) => item,
    ),
  );

  /// [MyoroMultiInputDropdownController] of the [MyoroMultiInputDropdown].
  late final _multiInputDropdownController = MyoroMultiInputDropdownController(
    configuration: MyoroMultiInputDropdownConfiguration(
      dropdownType: MyoroDropdownTypeEnum.overlay,
      menuConfiguration: MyoroMultiMenuConfiguration(request: () => _items, itemBuilder: _itemBuilder),
      selectedItemBuilder: (item) => item,
    ),
  );

  /// [MyoroInputDropdownConfiguration.dropdownType]
  MyoroDropdownTypeEnum _dropdownType = MyoroDropdownTypeEnum.overlay;

  /// Dispose function.
  @override
  void dispose() {
    _singleInputDropdownController.dispose();
    _multiInputDropdownController.dispose();
    super.dispose();
  }

  /// [MyoroMenuItem] builder.
  MyoroMenuItem _itemBuilder(String item) {
    return MyoroMenuIconTextButtonItem(
      configuration: MyoroIconTextButtonConfiguration(textConfiguration: MyoroTextConfiguration(text: item)),
    );
  }

  /// [_singleInputDropdownController] getter.
  MyoroSingleInputDropdownController<String> get singleInputDropdownController {
    return _singleInputDropdownController;
  }

  /// [_multiInputDropdownController] getter.
  MyoroMultiInputDropdownController<String> get multiInputDropdownController {
    return _multiInputDropdownController;
  }

  /// [_dropdownType] getter.
  MyoroDropdownTypeEnum get dropdownType {
    return _dropdownType;
  }

  /// [_dropdownType] setter.
  set dropdownType(MyoroDropdownTypeEnum dropdownType) {
    if (_dropdownType == dropdownType) return;
    _dropdownType = dropdownType;
    notifyListeners();
  }
}
