part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.validation] message to inform the user how to use [_ValidationOption].
final class _ValidationOptionMessage extends StatelessWidget {
  const _ValidationOptionMessage();

  @override
  Widget build(BuildContext context) {
    final widgetShowcaseOptionThemeExtension = context.read<WidgetShowcaseOptionThemeExtension>();

    return Text(
      'Submit text "123" to see a validation message',
      style: widgetShowcaseOptionThemeExtension.labelTextStyle,
    );
  }
}
