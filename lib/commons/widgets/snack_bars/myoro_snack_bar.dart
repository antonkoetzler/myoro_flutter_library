import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A snack bar [Widget].
///
/// Differs from [MyoroSnackBarContainer] as [MyoroSnackBar] is the
/// snack bar that will be displayed within a [MyoroSnackBarContainer].
///
/// Two main "modes": Providing a [Widget] or a simple [String] message for the content.
final class MyoroSnackBar extends StatelessWidget {
  /// Whether or not to display [_CloseButton].
  final bool showCloseButton;

  /// [String] content mode of the snack bar.
  final String? message;

  /// [Widget] content mode of the snack bar.
  final Widget? child;

  const MyoroSnackBar({
    super.key,
    this.showCloseButton = true,
    this.message,
    this.child,
  }) : assert(
          (message != null) ^ (child != null),
          '[MyoroSnackBar]: [message] (x)or [child] must be provided.',
        );

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroSnackBarThemeExtension>();

    return Container(
      padding: themeExtension.padding,
      decoration: BoxDecoration(
        color: themeExtension.backgroundColor,
        border: themeExtension.border,
        borderRadius: themeExtension.borderRadius,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (message != null) _Message(message!),
          if (child != null) Flexible(child: child!),
          if (showCloseButton) ...[
            SizedBox(width: themeExtension.contentCloseButtonSpacing),
            const _CloseButton(),
          ],
        ],
      ),
    );
  }
}

final class _Message extends StatelessWidget {
  final String _message;

  const _Message(this._message);

  @override
  Widget build(BuildContext context) {
    return Text(
      _message,
      style: context.resolveThemeExtension<MyoroSnackBarThemeExtension>().messageTextStyle,
    );
  }
}

final class _CloseButton extends StatelessWidget {
  const _CloseButton();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroSnackBarThemeExtension>();

    return MyoroIconTextHoverButton(
      icon: themeExtension.closeButtonIcon,
      iconSize: themeExtension.closeButtonIconSize,
      onPressed: () => context.hideSnackBar(),
    );
  }
}
