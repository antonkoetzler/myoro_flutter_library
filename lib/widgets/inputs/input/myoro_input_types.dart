part of 'myoro_input.dart';

/// Function executed when the checkbox next to the input is changed.
typedef MyoroInputCheckboxOnChanged = void Function(bool enabled, String text);

/// Function used for making the [MyoroInput] a search box. Executes everytime the input is changed.
typedef MyoroInputSearchRequest = FutureOr<List<String>> Function(String text);

/// Function executed when a [Form] is triggered.
typedef MyoroInputValidation = String? Function(String text);

/// Function executed when the enter key is pressed.
typedef MyoroInputOnFieldSubmitted = void Function(String text);

/// Function executed when the input changed.
typedef MyoroInputOnChanged = void Function(String text);
