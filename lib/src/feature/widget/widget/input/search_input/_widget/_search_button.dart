part of '../myoro_search_input.dart';

/// Search button of the [MyoroSearchInput].
final class _SearchButton<T> extends StatelessWidget {
  const _SearchButton(this._onTap);

  final VoidCallback _onTap;

  @override
  Widget build(context) {
    return MyoroIconTextButton(
      onTapUp: (_) => _onTap(),
      iconConfiguration: const MyoroIconConfiguration(icon: Icons.search),
      style: const MyoroIconTextButtonStyle().bordered(context),
    );
  }
}
