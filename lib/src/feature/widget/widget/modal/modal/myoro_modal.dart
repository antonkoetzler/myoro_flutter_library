import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_close_button.dart';
part '_widget/_header.dart';
part '_widget/_title.dart';

/// Modal of MFL. Every modal should be implementing [MyoroModal] like so.
///
/// ``` dart
/// class FooModal extends StatelessWidget {
///   // Has a private constructor.
///   const FooModal._();
///
///   // Has a static [show] function.
///   static Future<void> show(...) async {
///     // Calls [MyoroModal.show] within the modal's [show] function.
///     return await MyoroModal.show(...);
///   }
/// }
/// ```
class MyoroModal extends StatelessWidget {
  /// Default value of is bottom sheet.
  static const bottomSheetDefaultValue = false;

  /// Default value of use root navigator.
  static const useRootNavigatorDefaultValue = true;

  /// Default value of barrier dismissable.
  static const barrierDismissableDefaultValue = true;

  /// Default value of [_style].
  static const styleDefaultValue = MyoroModalStyle();

  /// Default value of [_title].
  static const titleDefaultValue = kMyoroEmptyString;

  /// Default value of [_showCloseButton].
  static const showCloseButtonDefaultValue = true;

  /// Function that opens a normal modal.
  static Future<T?> show<T>(
    BuildContext context, {
    MyoroModalStyle style = styleDefaultValue,
    bool isBottomSheet = bottomSheetDefaultValue,
    bool useRootNavigator = useRootNavigatorDefaultValue,
    bool barrierDismissable = barrierDismissableDefaultValue,
    String title = titleDefaultValue,
    bool showCloseButton = showCloseButtonDefaultValue,
    required Widget child,
  }) async {
    return isBottomSheet
        ? await showModalBottomSheet(
            context: context,
            builder: (_) => MyoroModal._(style, true, title, showCloseButton, child),
          )
        : await showDialog(
            context: context,
            useRootNavigator: useRootNavigator,
            barrierDismissible: barrierDismissable,
            builder: (_) => MyoroModal._(style, false, title, showCloseButton, child),
          );
  }

  /// Internal constructor.
  const MyoroModal._(this._style, this._isBottomSheet, this._title, this._showCloseButton, this._child);

  /// If [MyoroModal.showModal] or [MyoroModal.showBottomSheet] is called.
  final bool _isBottomSheet;

  /// Style.
  final MyoroModalStyle _style;

  /// Title of the modal.
  final String _title;

  /// If [_CloseButton] will be shown.
  final bool _showCloseButton;

  /// Contents of the modal.
  final Widget _child;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();
    final primaryColor = _style.primaryColor ?? themeExtension.primaryColor;
    final borderRadius = !_isBottomSheet
        ? (_style.borderRadius ?? themeExtension.borderRadius)
        : (_style.bottomSheetBorderRadius ?? themeExtension.bottomSheetBorderRadius);
    final constraints =
        _style.constraints ?? themeExtension.constraints ?? themeExtension.getDefaultConstraints(context);
    final padding = _style.padding ?? themeExtension.padding;
    final border = !_isBottomSheet
        ? (_style.border ?? themeExtension.border)
        : (_style.bottomSheetBorder ?? themeExtension.bottomSheetBorder);
    final spacing = _style.spacing ?? themeExtension.spacing ?? 0;

    final content = Material(
      color: primaryColor,
      borderRadius: borderRadius,
      child: Container(
        constraints: constraints,
        padding: padding,
        decoration: BoxDecoration(borderRadius: borderRadius, border: border),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: spacing,
          children: [
            if (_title.isNotEmpty || _showCloseButton) _Header(_title, _showCloseButton),
            Flexible(child: _child),
          ],
        ),
      ),
    );

    final wrappedContent = !_isBottomSheet ? Center(child: content) : content;

    return Provider.value(value: _style, child: wrappedContent);
  }
}
