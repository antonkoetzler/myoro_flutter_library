import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Interface of [MyoroInputController].
abstract interface class MyoroInputViewModelInterface {
  /// Dispose function.
  void dispose();

  /// [_controller]'s listener.
  void inputControllerListener();

  /// [MyoroCheckboxConfiguration.onChanged] of [_Checkbox].
  void checkboxOnChanged(bool value);

  /// Clears the [MyoroInput]'s text.
  ///
  /// If [MyoroControllerState] is not null, it clears
  /// the text to it's [MyoroInputFormatter.initialText].
  void clearText();
}
