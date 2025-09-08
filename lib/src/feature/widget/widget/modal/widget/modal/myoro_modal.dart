import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

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
    MyoroModalThemeExtension? themeExtension,
  }) async {
    final result = await showDialog(
      context: context,
      useRootNavigator: configuration.useRootNavigator,
      barrierDismissible: configuration.barrierDismissable,
      builder: (_) => MyoroModal._(configuration, child, themeExtension, isBottomSheet: false),
    );
    configuration.onClosed?.call(result);
    return result;
  }

  /// Function that opens a bottom sheet modal.
  static Future<T?> showBottomSheet<T>(
    BuildContext context, {
    MyoroModalConfiguration configuration = const MyoroModalConfiguration(),
    required Widget child,
    MyoroModalThemeExtension? themeExtension,
  }) async {
    final result = await showModalBottomSheet(
      context: context,
      builder: (_) => MyoroModal._(configuration, child, themeExtension, isBottomSheet: true),
    );
    configuration.onClosed?.call(result);
    return result;
  }

  const MyoroModal._(this._configuration, this._child, this.themeExtension, {required this.isBottomSheet});

  /// Configuration of the modal.
  final MyoroModalConfiguration _configuration;

  /// Contents of the modal.
  final Widget _child;

  /// Theme extension.
  final MyoroModalThemeExtension? themeExtension;

  /// If [MyoroModal.showModal] or [MyoroModal.showBottomSheet] is called.
  final bool isBottomSheet;

  @override
  Widget build(BuildContext context) {
    final resolvedThemeExtension = themeExtension ?? context.resolveThemeExtension<MyoroModalThemeExtension>();

    final titleIsNotEmpty = _configuration.title.isNotEmpty;
    final showCloseButton = _configuration.showCloseButton;
    final showHeader = titleIsNotEmpty || showCloseButton;

    final primaryColor = resolvedThemeExtension.primaryColor;
    final borderRadius = !isBottomSheet
        ? resolvedThemeExtension.borderRadius
        : resolvedThemeExtension.bottomSheetBorderRadius;
    final constraints = _configuration.constraints ?? resolvedThemeExtension.constraints(context);
    final padding = _configuration.padding ?? resolvedThemeExtension.padding;
    final border = !isBottomSheet ? resolvedThemeExtension.border : resolvedThemeExtension.bottomSheetBorder;
    final spacing = resolvedThemeExtension.spacing;

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

    return MyoroSingularThemeExtensionWrapper(themeExtension: resolvedThemeExtension, child: wrappedContent);
  }
}
