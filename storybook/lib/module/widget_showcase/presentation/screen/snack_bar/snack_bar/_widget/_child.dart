part of '../myoro_snack_bar_widget_showcase_screen.dart';

/// [MyoroSnackBarConfiguration.child] of [_Widget].
final class _Child extends StatelessWidget {
  const _Child();

  @override
  Widget build(_) {
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        iconConfiguration: MyoroIconConfiguration(icon: myoroFake<IconData>()),
        textConfiguration: const MyoroTextConfiguration(text: 'Custom widget!'),
      ),
    );
  }
}
