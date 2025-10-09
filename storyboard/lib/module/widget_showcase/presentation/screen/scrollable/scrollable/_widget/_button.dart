part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Generic button of [MyoroScrollablesWidgetShowcaseScreen].
final class _Button extends StatelessWidget {
  const _Button(this._text);

  final String _text;

  @override
  Widget build(BuildContext context) {
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        iconConfiguration: MyoroIconConfiguration(icon: myoroFake<IconData>()),
        textConfiguration: MyoroTextConfiguration(text: _text),
        onTapUp: (_) {},
      ),
      style: const MyoroIconTextButtonStyle().bordered(context),
    );
  }
}
