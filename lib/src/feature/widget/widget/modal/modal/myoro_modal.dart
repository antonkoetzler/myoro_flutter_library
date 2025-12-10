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
  static const showCloseButtonDefaultValue = false;

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
            backgroundColor: MyoroColors.transparent,
            context: context,
            isScrollControlled: true,
            isDismissible: barrierDismissable,
            builder: (_) => MyoroModal._(style, true, title, showCloseButton, barrierDismissable, child),
          )
        : await showDialog(
            context: context,
            useRootNavigator: useRootNavigator,
            barrierDismissible: barrierDismissable,
            builder: (_) => MyoroModal._(style, false, title, showCloseButton, barrierDismissable, child),
          );
  }

  /// Internal constructor.
  const MyoroModal._(
    this._style,
    this._isBottomSheet,
    this._title,
    this._showCloseButton,
    this._barrierDismissable,
    this._child,
  );

  /// If [MyoroModal.showModal] or [MyoroModal.showBottomSheet] is called.
  final bool _isBottomSheet;

  /// Style.
  final MyoroModalStyle _style;

  /// Title of the modal.
  final String _title;

  /// If [_CloseButton] will be shown.
  final bool _showCloseButton;

  /// If barrier is dismissable.
  final bool _barrierDismissable;

  /// Contents of the modal.
  final Widget _child;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();
    final primaryColor = _style.primaryColor ?? themeExtension.primaryColor;
    final borderRadius = _style.borderRadius ?? themeExtension.borderRadius;
    final constraints =
        _style.constraints ?? themeExtension.constraints ?? themeExtension.getDefaultConstraints(context);
    final contentPadding = _style.contentPadding ?? themeExtension.contentPadding;
    final border = _style.border ?? themeExtension.border;
    final spacing = _style.spacing ?? themeExtension.spacing ?? 0;
    final margin = _style.margin ?? themeExtension.margin ?? EdgeInsets.zero;

    final content = Padding(
      padding: margin,
      child: SizedBox(
        width: double.infinity,
        child: Material(
          color: primaryColor,
          borderRadius: borderRadius,
          child: Container(
            constraints: constraints,
            padding: contentPadding,
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
        ),
      ),
    );

    final viewInsets = MediaQuery.viewInsetsOf(context);

    return Provider.value(
      value: _style,
      child: _isBottomSheet
          ? Stack(
              children: [
                if (_barrierDismissable)
                  Positioned.fill(
                    child: GestureDetector(
                      onTap: context.navigator.pop,
                      behavior: HitTestBehavior.translucent,
                      child: Container(color: Colors.transparent),
                    ),
                  ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.only(bottom: viewInsets.bottom),
                      child: SafeArea(top: false, bottom: true, child: content),
                    ),
                  ),
                ),
              ],
            )
          : Padding(
              padding: EdgeInsets.only(bottom: viewInsets.bottom),
              child: Center(child: content),
            ),
    );
  }
}
