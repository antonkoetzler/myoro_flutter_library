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
  final MyoroModalConfiguration configuration;

  /// Contents of the modal.
  final Widget child;

  /// Private constructor to force [show] to be used.
  const MyoroModal._(this.configuration, this.child);

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

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();

    return Center(
      child: Material(
        color: themeExtension.primaryColor,
        borderRadius: themeExtension.borderRadius,
        child: Container(
          constraints: configuration.constraints,
          padding: configuration.padding ?? themeExtension.padding,
          decoration: BoxDecoration(borderRadius: themeExtension.borderRadius, border: themeExtension.border),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: themeExtension.spacing,
            children: [
              if (configuration.title != null || configuration.showCloseButton) _Header(configuration),
              Flexible(child: child),
            ],
          ),
        ),
      ),
    );
  }
}

final class _Header extends StatelessWidget {
  final MyoroModalConfiguration _configuration;

  const _Header(this._configuration);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (_configuration.title != null) _Title(_configuration.title!),
        if (_configuration.showCloseButton == true) ...[const Spacer(), _CloseButton(_configuration)],
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
      child: Text(_title, style: context.resolveThemeExtension<MyoroModalThemeExtension>().titleTextStyle),
    );
  }
}

final class _CloseButton extends StatelessWidget {
  final MyoroModalConfiguration _configuration;

  const _CloseButton(this._configuration);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();

    return Padding(
      padding: _configuration.closeButtonPadding ?? EdgeInsets.zero,
      child: MyoroIconTextButton(
        configuration: MyoroIconTextButtonConfiguration(
          buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) => context.navigator.pop()),
          iconConfiguration: MyoroIconTextButtonIconConfiguration(
            icon: themeExtension.closeButtonIcon,
            size: themeExtension.closeButtonIconSize,
          ),
        ),
      ),
    );
  }
}
