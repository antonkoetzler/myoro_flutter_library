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
  /// Function that opens a normal modal.
  static Future<T?> showModal<T>(
    BuildContext context, {
    MyoroModalConfiguration configuration = const MyoroModalConfiguration(),
    required Widget child,
    MyoroModalStyle? style,
  }) async {
    final result = await showDialog(
      context: context,
      useRootNavigator: configuration.useRootNavigator,
      barrierDismissible: configuration.barrierDismissable,
      builder: (_) => MyoroModal._(configuration, child, style ?? const MyoroModalStyle(), isBottomSheet: false),
    );
    configuration.onClosed?.call(result);
    return result;
  }

  /// Function that opens a bottom sheet modal.
  static Future<T?> showBottomSheet<T>(
    BuildContext context, {
    MyoroModalConfiguration configuration = const MyoroModalConfiguration(),
    required Widget child,
    MyoroModalStyle? style,
  }) async {
    final result = await showModalBottomSheet(
      context: context,
      builder: (_) => MyoroModal._(configuration, child, style ?? const MyoroModalStyle(), isBottomSheet: true),
    );
    configuration.onClosed?.call(result);
    return result;
  }

  const MyoroModal._(this._configuration, this._child, this.style, {this.isBottomSheet = false});

  /// Configuration of the modal.
  final MyoroModalConfiguration _configuration;

  /// Contents of the modal.
  final Widget _child;

  /// Style.
  final MyoroModalStyle style;

  /// If [MyoroModal.showModal] or [MyoroModal.showBottomSheet] is called.
  final bool isBottomSheet;

  @override
  Widget build(BuildContext context) {
    final titleIsNotEmpty = _configuration.title.isNotEmpty;
    final showCloseButton = _configuration.showCloseButton;
    final showHeader = titleIsNotEmpty || showCloseButton;

    final themeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();
    final primaryColor = style.primaryColor ?? themeExtension.primaryColor;
    final borderRadius = !isBottomSheet
        ? (style.borderRadius ?? themeExtension.borderRadius)
        : (style.bottomSheetBorderRadius ?? themeExtension.bottomSheetBorderRadius);
    final constraints =
        style.constraints ?? themeExtension.constraints ?? themeExtension.getDefaultConstraints(context);
    final padding = style.padding ?? themeExtension.padding;
    final border = !isBottomSheet
        ? (style.border ?? themeExtension.border)
        : (style.bottomSheetBorder ?? themeExtension.bottomSheetBorder);
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;

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
            if (showHeader) _Header(_configuration),
            Flexible(child: _child),
          ],
        ),
      ),
    );

    final wrappedContent = !isBottomSheet ? Center(child: content) : content;

    return Provider.value(value: style, child: wrappedContent);
  }
}
