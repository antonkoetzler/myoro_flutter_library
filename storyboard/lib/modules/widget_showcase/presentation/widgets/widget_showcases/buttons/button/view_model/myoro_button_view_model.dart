import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroButtonWidgetShowcase].
final class MyoroButtonWidgetShowcaseViewModel extends ChangeNotifier {
  static const tooltipEnabledDefaultValue = false;
  static const backgroundColorBuilderEnabledDefaultValue = false;
  static const borderBuilderEnabledDefaultValue = false;
  static const onTapDownEnabledDefaultValue = true;
  static const onTapUpEnabledDefaultValue = true;

  /// Whether or not to provide [MyoroButtonConfiguration.tooltipConfiguration].
  bool _tooltipEnabled = tooltipEnabledDefaultValue;
  bool get tooltipEnabled => _tooltipEnabled;
  set tooltipEnabled(bool tooltipEnabled) {
    _tooltipEnabled = tooltipEnabled;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.cursor]
  MouseCursor? _cursor;
  MouseCursor? get cursor => _cursor;
  set cursor(MouseCursor? cursor) {
    _cursor = cursor;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.borderRadius]
  BorderRadius? _borderRadius;
  BorderRadius? get borderRadius => _borderRadius;
  set borderRadius(BorderRadius? borderRadius) {
    _borderRadius = borderRadius;
    notifyListeners();
  }

  /// If [MyoroButtonConfiguration.backgroundColorBuilder] is provided.
  bool _backgroundColorBuilderEnabled = backgroundColorBuilderEnabledDefaultValue;
  bool get backgroundColorBuilderEnabled => _backgroundColorBuilderEnabled;
  set backgroundColorBuilderEnabled(bool backgroundColorBuilderEnabled) {
    _backgroundColorBuilderEnabled = backgroundColorBuilderEnabled;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.backgroundColorBuilder]'s [Color] for [MyoroTapStatusEnum.idle].
  Color? _idleBackgroundColor;
  Color get idleBackgroundColor => _idleBackgroundColor ?? MyoroColorDesignSystem.transparent;
  set idleBackgroundColor(Color? idleBackgroundColor) {
    _idleBackgroundColor = idleBackgroundColor;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.backgroundColorBuilder]'s [Color] for [MyoroTapStatusEnum.hover].
  Color? _hoverBackgroundColor;
  Color get hoverBackgroundColor => _hoverBackgroundColor ?? MyoroColorDesignSystem.transparent;
  set hoverBackgroundColor(Color? hoverBackgroundColor) {
    _hoverBackgroundColor = hoverBackgroundColor;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.backgroundColorBuilder]'s [Color] for [MyoroTapStatusEnum.tap].
  Color? _tapBackgroundColor;
  Color get tapBackgroundColor => _tapBackgroundColor ?? MyoroColorDesignSystem.transparent;
  set tapBackgroundColor(Color? tapBackgroundColor) {
    _tapBackgroundColor = tapBackgroundColor;
    notifyListeners();
  }

  /// If [MyoroButtonConfiguration.borderBuilder] is provided.
  bool _borderBuilderEnabled = borderBuilderEnabledDefaultValue;
  bool get borderBuilderEnabled => _borderBuilderEnabled;
  set borderBuilderEnabled(bool borderBuilderEnabled) {
    _borderBuilderEnabled = borderBuilderEnabled;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.borderBuilder]'s [Color] for [MyoroTapStatusEnum.idle].
  Color? _idleBorderColor;
  Color get idleBorderColor => _idleBorderColor ?? MyoroColorDesignSystem.transparent;
  set idleBorderColor(Color? idleBorderColor) {
    _idleBorderColor = idleBorderColor;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.borderBuilder]'s [Color] for [MyoroTapStatusEnum.hover].
  Color? _hoverBorderColor;
  Color get hoverBorderColor => _hoverBorderColor ?? MyoroColorDesignSystem.transparent;
  set hoverBorderColor(Color? hoverBorderColor) {
    _hoverBorderColor = hoverBorderColor;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.borderBuilder]'s [Color] for [MyoroTapStatusEnum.tap].
  Color? _tapBorderColor;
  Color get tapBorderColor => _tapBorderColor ?? MyoroColorDesignSystem.transparent;
  set tapBorderColor(Color? tapBorderColor) {
    _tapBorderColor = tapBorderColor;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.onTapDown]
  bool _onTapDownEnabled = onTapDownEnabledDefaultValue;
  bool get onTapDownEnabled => _onTapDownEnabled;
  set onTapDownEnabled(bool onTapDownEnabled) {
    _onTapDownEnabled = onTapDownEnabled;
    notifyListeners;
  }

  /// [MyoroButtonConfiguration.onTapUp]
  bool _onTapUpEnabled = onTapUpEnabledDefaultValue;
  bool get onTapUpEnabled => _onTapUpEnabled;
  set onTapUpEnabled(bool onTapUpEnabled) {
    _onTapUpEnabled = onTapUpEnabled;
    notifyListeners();
  }

  Color backgroundColorBuilder(MyoroButtonWidgetShowcaseViewModel viewModel, MyoroTapStatusEnum tapStatusEnum) {
    return switch (tapStatusEnum) {
      MyoroTapStatusEnum.idle => viewModel.idleBackgroundColor,
      MyoroTapStatusEnum.hover => viewModel.hoverBackgroundColor,
      MyoroTapStatusEnum.tap => viewModel.tapBackgroundColor,
    };
  }

  BoxBorder borderBuilder(MyoroButtonWidgetShowcaseViewModel viewModel, MyoroTapStatusEnum tapStatusEnum) {
    return Border.all(
      width: kMyoroBorderLength,
      color: switch (tapStatusEnum) {
        MyoroTapStatusEnum.idle => viewModel.idleBorderColor,
        MyoroTapStatusEnum.hover => viewModel.hoverBorderColor,
        MyoroTapStatusEnum.tap => viewModel.tapBorderColor,
      },
    );
  }

  void onTapDown(BuildContext context) {
    context.showSnackBar(
      snackBar: const MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(
          snackBarType: MyoroSnackBarTypeEnum.attention,
          message: 'Tap down activated.',
        ),
      ),
    );
  }

  void onTapUp(BuildContext context) {
    context.showSnackBar(
      snackBar: const MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(
          snackBarType: MyoroSnackBarTypeEnum.attention,
          message: 'Tap up activated.',
        ),
      ),
    );
  }
}
