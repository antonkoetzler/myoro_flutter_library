import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_cancel_button.dart';
part '_widget/_confirm_button.dart';
part '_widget/_footer_buttons.dart';
part '_widget/_message.dart';

/// A simple yes/no dialog modal.
class MyoroDialogModal extends StatelessWidget {
  /// Configuration.
  final MyoroDialogModalConfiguration configuration;

  const MyoroDialogModal._(this.configuration);

  static Future<void> show(
    BuildContext context, {
    MyoroModalConfiguration modalConfiguration = const MyoroModalConfiguration(),
    required MyoroDialogModalConfiguration dialogModalConfiguration,
  }) async {
    await MyoroModal.show(
      context,
      configuration: modalConfiguration,
      child: MyoroDialogModal._(dialogModalConfiguration),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();

    return Column(
      spacing: themeExtension.spacing,
      children: [Expanded(child: _Message(configuration)), _FooterButtons(configuration)],
    );
  }
}
