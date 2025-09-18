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
    MyoroDialogModalThemeExtension? dialogModalThemeExtension,
  }) async {
    await MyoroModal.showModal(
      context,
      configuration: configuration,
      child: MyoroDialogModal._(configuration, dialogModalThemeExtension),
    );
  }

  const MyoroDialogModal._(this.configuration, this.dialogModalThemeExtension);

  /// Configuration.
  final MyoroDialogModalConfiguration configuration;

  /// Theme extension.
  final MyoroDialogModalThemeExtension? dialogModalThemeExtension;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final dialogModalThemeExtension =
        this.dialogModalThemeExtension ?? MyoroDialogModalThemeExtension.builder(textTheme);

    final modalThemeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();
    final spacing = modalThemeExtension.spacing ?? 0;

    return MyoroSingularThemeExtensionWrapper(
      themeExtension: dialogModalThemeExtension,
      child: Column(
        spacing: spacing,
        children: [
          Expanded(child: _Message(configuration)),
          _FooterButtons(configuration),
        ],
      ),
    );
  }
}
