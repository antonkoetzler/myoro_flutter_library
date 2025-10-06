part of '../myoro_search_input_v2.dart';

/// Search button of the [MyoroSearchInputV2].
final class _SearchButton<T> extends StatelessWidget {
  const _SearchButton(this._onTap);

  final VoidCallback _onTap;

  @override
  Widget build(context) {
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        onTapUp: (_) => _onTap(),
        iconConfiguration: const MyoroIconConfiguration(icon: Icons.search),
      ),
      style: const MyoroIconTextButtonStyle().bordered(context),
    );
  }
}
