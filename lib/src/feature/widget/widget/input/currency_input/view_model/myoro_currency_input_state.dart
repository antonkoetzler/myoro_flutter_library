part of 'myoro_currency_input_view_model.dart';

/// State of [MyoroCurrencyInputViewModel].
class MyoroCurrencyInputState {
  /// Default constructor.
  MyoroCurrencyInputState(
    this.min,
    this.max,
    this.decimalPlaces,
    MyoroCurrencyEnum currency,
    this.canChangeCurrency,
    this.autofocus,
    this.onChanged,
    FocusNode? focusNode,
    TextEditingController? controller,
    this.onFieldSubmitted,
  ) : _selectedCurrencyController = ValueNotifier(currency) {
    _focusNode = focusNode ?? (_localFocusNode ??= FocusNode());
    _controller = controller ?? (_localController ??= TextEditingController());
  }

  /// Min value.
  double min;

  /// Max value.
  double? max;

  /// Decimal places.
  int decimalPlaces;

  /// If the user can select another currency.
  bool canChangeCurrency;

  /// Whether the input should autofocus.
  bool autofocus;

  /// On changed.
  MyoroCurrencyInputOnChanged onChanged;

  /// On field submitted.
  MyoroCurrencyInputOnFieldSubmitted? onFieldSubmitted;

  /// [ValueNotifier] of the selected [MyoroCurrencyEnum].
  final ValueNotifier<MyoroCurrencyEnum> _selectedCurrencyController;

  /// [MyoroDropdown.showingController]
  final _showingController = ValueNotifier(false);

  /// Local [FocusNode].
  FocusNode? _localFocusNode;

  /// Effective [FocusNode].
  late FocusNode _focusNode;

  /// Local [TextEditingController].
  TextEditingController? _localController;

  /// Effective [TextEditingController].
  late TextEditingController _controller;

  /// Dispose function.
  void dispose() {
    _selectedCurrencyController.dispose();
    _showingController.dispose();
    _localFocusNode?.dispose();
    _localController?.dispose();
  }

  /// [_selectedCurrencyController] getter.
  ValueNotifier<MyoroCurrencyEnum> get selectedCurrencyController {
    return _selectedCurrencyController;
  }

  /// Getter of [_selectedCurrencyController]'s value.
  MyoroCurrencyEnum get selectedCurrency {
    return _selectedCurrencyController.value;
  }

  /// [_showingController] getter.
  ValueNotifier<bool> get showingController {
    return _showingController;
  }

  /// Getter of [_showingController]'s value.
  bool get showing {
    return _showingController.value;
  }

  /// [_focusNode] getter.
  FocusNode get focusNode {
    return _focusNode;
  }

  /// [_controller] getter.
  TextEditingController get controller {
    return _controller;
  }

  /// [_selectedCurrencyController] setter.
  set selectedCurrency(MyoroCurrencyEnum value) {
    _selectedCurrencyController.value = value;
  }

  /// [_showingController] setter.
  set showing(bool value) {
    _showingController.value = value;
  }

  /// [_focusNode] setter.
  set focusNode(FocusNode? focusNode) {
    if (focusNode == null) {
      if (_localFocusNode != null) {
        return;
      } else {
        _focusNode = (_localFocusNode ??= FocusNode());
      }
    } else {
      _localFocusNode?.dispose();
      _localFocusNode = null;
      _focusNode = focusNode;
    }
  }

  /// [_controller] setter.
  set controller(TextEditingController? controller) {
    if (controller == null) {
      if (_localController != null) {
        return;
      } else {
        _controller = (_localController ??= TextEditingController());
      }
    } else {
      _localController?.dispose();
      _localController = null;
      _controller = controller;
    }
  }
}
