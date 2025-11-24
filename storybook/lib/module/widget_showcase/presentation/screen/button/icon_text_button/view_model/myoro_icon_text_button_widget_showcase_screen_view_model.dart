import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroIconTextButtonWidgetShowcaseScreen].
final class MyoroIconTextButtonWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroIconTextButtonWidgetShowcaseScreenState();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [_state] getter.
  MyoroIconTextButtonWidgetShowcaseScreenState get state {
    return _state;
  }

  /// [MyoroIconTextButtonStyle] builder.
  MyoroIconTextButtonStyle get style {
    final buttonViewModel = _state.buttonViewModel;
    final buttonStyle = buttonViewModel.style;
    final backgroundIdleColor = buttonStyle.backgroundIdleColor;
    final backgroundHoverColor = buttonStyle.backgroundHoverColor;
    final backgroundTapColor = buttonStyle.backgroundTapColor;
    final contentIdleColor = buttonStyle.contentIdleColor;
    final contentHoverColor = buttonStyle.contentHoverColor;
    final contentTapColor = buttonStyle.contentTapColor;
    final borderWidth = buttonStyle.borderWidth;
    final borderRadius = buttonStyle.borderRadius;
    final borderIdleColor = buttonStyle.borderIdleColor;
    final borderHoverColor = buttonStyle.borderHoverColor;
    final borderTapColor = buttonStyle.borderTapColor;

    return MyoroIconTextButtonStyle(
      backgroundIdleColor: backgroundIdleColor,
      backgroundHoverColor: backgroundHoverColor,
      backgroundTapColor: backgroundTapColor,
      contentIdleColor: contentIdleColor,
      contentHoverColor: contentHoverColor,
      contentTapColor: contentTapColor,
      borderWidth: borderWidth,
      borderRadius: borderRadius,
      borderIdleColor: borderIdleColor,
      borderHoverColor: borderHoverColor,
      borderTapColor: borderTapColor,
      contentPadding: _state.padding,
      spacing: _state.spacing,
      textStyle: MyoroTextStyle(style: _state.style),
    );
  }
}
