import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '../../theme_extensions/snack_bars/myoro_snack_bar_theme_extension.dart';

/// A snack bar [Widget].
///
/// Differs from [MyoroSnackBarContainer] as [MyoroSnackBar] is the
/// snack bar that will be displayed within a [MyoroSnackBarContainer].
///
/// Two main "modes": Providing a [Widget] or a simple [String] message for the content.
class MyoroSnackBar extends StatelessWidget {
  /// Configuration.
  final MyoroSnackBarConfiguration configuration;

  const MyoroSnackBar({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroSnackBarThemeExtension>();

    final String message = configuration.message;
    final Widget? child = configuration.child;

    return Container(
      padding: themeExtension.padding,
      decoration: BoxDecoration(
        color: themeExtension.primaryColor,
        border: Border.all(
          width: themeExtension.borderWidth,
          color: configuration.snackBarType.getBorderColor(context),
        ),
        borderRadius: themeExtension.borderRadius,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (message.isNotEmpty) Flexible(child: _Message(message)),
          if (child != null) Flexible(child: child),
          if (configuration.showCloseButton) ...[
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
      style:
          context
              .resolveThemeExtension<MyoroSnackBarThemeExtension>()
              .messageTextStyle,
    );
  }
}

final class _CloseButton extends StatelessWidget {
  const _CloseButton();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroSnackBarThemeExtension>();

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(
          onTapUp: (_) => context.hideSnackBar(),
        ),
        iconConfiguration: MyoroIconTextButtonIconConfiguration(
          icon: themeExtension.closeButtonIcon,
          size: themeExtension.closeButtonIconSize,
        ),
      ),
    );
  }
}
