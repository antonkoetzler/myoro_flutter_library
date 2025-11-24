part of '../myoro_snack_bar_widget_showcase_screen.dart';

/// [MyoroSnackBarConfiguration.child] of [_Widget].
final class _Child extends StatelessWidget {
  const _Child();

  @override
  Widget build(_) {
    return MyoroIconTextButton(icon: myoroFake<IconData>(), text: 'Custom widget!');
  }
}
