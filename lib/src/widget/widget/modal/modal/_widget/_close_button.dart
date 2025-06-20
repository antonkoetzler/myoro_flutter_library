part of '../myoro_modal.dart';

/// Close button of the [MyoroModal].
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
          iconConfiguration: themeExtension.closeButtonIconConfiguration,
        ),
      ),
    );
  }
}
