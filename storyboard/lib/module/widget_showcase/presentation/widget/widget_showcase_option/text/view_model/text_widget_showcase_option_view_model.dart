import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [TextWidgetShowcaseOption].
final class TextWidgetShowcaseOptionViewModel extends ChangeNotifier {
  TextWidgetShowcaseOptionViewModel(this._configuration)
    : _textController = TextEditingController(text: _configuration.textInitialValue);

  /// Configuration.
  final TextWidgetShowcaseOptionConfiguration _configuration;
  TextWidgetShowcaseOptionConfiguration get configuration => _configuration;

  /// [Text.data]
  late final TextEditingController _textController;
  TextEditingController get textController => _textController;

  /// Dispose function.
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
