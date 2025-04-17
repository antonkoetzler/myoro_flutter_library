import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

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
class MyoroModal extends StatelessWidget {
  /// Configuration of the modal.
  final MyoroModalConfiguration? configuration;

  /// Contents of the modal.
  final Widget child;

  /// Private constructor to force [show] to be used.
  const MyoroModal._(this.configuration, this.child);

  /// Function that opens the modal.
  static Future<void> show(
    BuildContext context, {
    MyoroModalConfiguration? configuration,
    required Widget child,
  }) async {
    return await showDialog(
      context: context,
      barrierDismissible: configuration?.barrierDismissable ?? true,
      builder: (_) => MyoroModal._(configuration, child),
    ).then((_) => configuration?.onClosed?.call());
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroModalThemeExtension>();
    final showCloseButton = configuration?.showCloseButton ?? false;

    return Center(
      child: Material(
        color: themeExtension.primaryColor,
        borderRadius: themeExtension.borderRadius,
        child: Container(
          constraints: configuration?.constraints ?? themeExtension.constraints,
          padding: themeExtension.padding,
          decoration: BoxDecoration(
            borderRadius: themeExtension.borderRadius,
            border: themeExtension.border,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (configuration?.title != null || showCloseButton) ...[
                _Header(configuration?.title, showCloseButton),
                SizedBox(height: themeExtension.spacing),
              ],
              Flexible(child: child),
            ],
          ),
        ),
      ),
    );
  }
}

final class _Header extends StatelessWidget {
  final String? _title;
  final bool _showCloseButton;

  const _Header(this._title, this._showCloseButton);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (_title != null) _Title(_title),
        if (_showCloseButton) const _CloseButton(),
      ],
    );
  }
}

final class _Title extends StatelessWidget {
  final String _title;

  const _Title(this._title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        // Used to align [_Title] with [_CloseButton] visually.
        left: 8,
      ),
      child: Text(
        _title,
        style:
            context
                .resolveThemeExtension<MyoroModalThemeExtension>()
                .titleTextStyle,
      ),
    );
  }
}

final class _CloseButton extends StatelessWidget {
  const _CloseButton();

  @override
  Widget build(BuildContext context) {
    return MyoroIconTextHoverButton(
      icon:
          context
              .resolveThemeExtension<MyoroModalThemeExtension>()
              .closeButtonIcon,
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}
