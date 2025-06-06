import 'package:storyboard/storyboard.dart';

/// Controller of a [_Slider] in [BoxConstraintsWidgetShowcaseOption].
final class BoxConstraintsWidgetShowcaseOptionSelectorController {
  static const enabledDefaultValue = true;

  BoxConstraintsWidgetShowcaseOptionSelectorController({this.enabled = enabledDefaultValue, required this.value});

  /// Whether or not the field is being used to construct the [BoxConstraints].
  bool enabled;

  /// Value of the [BoxConstraints] field.
  double value;
}
