import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_cancel_button.dart';
part '_widget/_confirm_button.dart';
part '_widget/_footer_buttons.dart';
part '_widget/_message.dart';

/// A simple yes/no dialog modal.
class MyoroDialogModal extends StatelessWidget {
  static Future<void> show(
    BuildContext context, {
    required MyoroDialogModalConfiguration configuration,
    MyoroDialogModalThemeExtension? themeExtension,
  }) async {
    await MyoroModal.showModal(
      context,
      configuration: configuration,
      child: MyoroDialogModal._(configuration, themeExtension),
    );
  }

  const MyoroDialogModal._(this.configuration, this.themeExtension);

  /// Configuration.
  final MyoroDialogModalConfiguration configuration;

  /// Theme extension.
  final MyoroDialogModalThemeExtension? themeExtension;

  @override
  Widget build(BuildContext context) {
    final resolvedThemeExtension = themeExtension ?? context.resolveThemeExtension<MyoroDialogModalThemeExtension>();
    final modalThemeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();

    final child = Column(
      spacing: modalThemeExtension.spacing,
      children: [
        Expanded(child: _Message(configuration)),
        _FooterButtons(configuration),
      ],
    );

    return MyoroSingularThemeExtensionWrapper(themeExtension: resolvedThemeExtension, child: child);
  }
}
