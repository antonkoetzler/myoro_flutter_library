part of 'myoro_search_input_view_model.dart';

/// State of [MyoroSearchInputViewModel].
final class MyoroSearchInputState<T> {
  MyoroSearchInputState(this.configuration) {
    _itemsRequestNotifier = MyoroRequestNotifier<Set<T>>(requestCallback: () => configuration.request(inputController.text));
  }

  /// Dispose function.
  void dispose() {
    _inputHeightNotifier.dispose();
    _itemsRequestNotifier.dispose();
    _localInputController?.dispose();
  }

  /// Configuration.
  final MyoroSearchInputConfiguration<T> configuration;

  /// [GlobalKey] of the [MyoroInput].
  final _inputKey = GlobalKey();

  /// [_inputKey] getter.
  GlobalKey get inputKey {
    return _inputKey;
  }

  /// [ValueNotifier] of the [MyoroInput]'s height.
  final _inputHeightNotifier = ValueNotifier<double?>(null);

  /// [_inputHeightNotifier] getter.
  ValueNotifier<double?> get inputHeightNotifier {
    return _inputHeightNotifier;
  }

  /// [_inputHeightNotifier] setter.
  set inputHeight(double? inputHeight) {
    _inputHeightNotifier.value = inputHeight;
  }

  /// [TextEditingController] of the [MyoroInput].
  TextEditingController? _localInputController;

  /// [TextEditingController] of the [MyoroInput].
  TextEditingController get inputController {
    return configuration.controller ?? (_localInputController ??= TextEditingController());
  }

  /// Items of the [MyoroSearchInput].
  late final MyoroRequestNotifier<Set<T>> _itemsRequestNotifier;

  /// Items of the [MyoroSearchInput].
  MyoroRequestNotifier<Set<T>> get itemsRequestNotifier => _itemsRequestNotifier;

  /// Items of the [MyoroSearchInput].
  MyoroRequest<Set<T>> get itemsRequest => _itemsRequestNotifier.value;
}
