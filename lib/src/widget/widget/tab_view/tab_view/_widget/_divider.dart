part of '../myoro_tab_view.dart';

/// Divider between [_Tabs] and [_SelectedTabContent].
final class _Divider extends StatelessWidget {
  const _Divider(this._direction);

  final Axis _direction;

  @override
  Widget build(_) {
    return MyoroBasicDivider(configuration: MyoroBasicDividerConfiguration(direction: _direction));
  }
}
