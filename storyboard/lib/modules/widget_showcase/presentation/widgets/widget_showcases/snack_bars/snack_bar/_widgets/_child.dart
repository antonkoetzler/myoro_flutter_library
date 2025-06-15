part of '../myoro_snack_bar_widget_showcase.dart';

/// [MyoroSnackBarConfiguration.child] of [_Widget].
final class _Child extends StatelessWidget {
  const _Child();

  @override
  Widget build(_) {
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        iconConfiguration: MyoroIconTextButtonIconConfiguration(icon: myoroFake<IconData>()),
        textConfiguration: const MyoroIconTextButtonTextConfiguration(text: 'Custom widget!'),
      ),
    );
  }
}
