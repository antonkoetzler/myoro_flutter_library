import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_close_button.dart';
part '_widget/_header.dart';
part '_widget/_title.dart';

/// Base modal. Every modal should be implementing [MyoroModal] like so.
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
class MyoroModal extends MyoroStatelessWidget {
  /// Function that opens the modal.
  static Future<void> show(
    BuildContext context, {
    MyoroModalConfiguration configuration = const MyoroModalConfiguration(),
    required Widget child,
  }) async {
    return await showDialog(
      context: context,
      useRootNavigator: configuration.useRootNavigator,
      barrierDismissible: configuration.barrierDismissable,
      builder: (_) => MyoroModal._(configuration, child),
    ).then((_) => configuration.onClosed?.call());
  }

  const MyoroModal._(this.configuration, this.child);

  /// Configuration of the modal.
  final MyoroModalConfiguration configuration;

  /// Contents of the modal.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();

    return Center(
      child: Material(
        color: themeExtension.primaryColor,
        borderRadius: themeExtension.borderRadius,
        child: Container(
          constraints: configuration.constraints ?? themeExtension.constraints(context),
          padding: configuration.padding ?? themeExtension.padding,
          decoration: BoxDecoration(borderRadius: themeExtension.borderRadius, border: themeExtension.border),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: themeExtension.spacing,
            children: [
              if (configuration.title.isNotEmpty || configuration.showCloseButton) _Header(configuration),
              Flexible(child: child),
            ],
          ),
        ),
      ),
    );
  }
}
