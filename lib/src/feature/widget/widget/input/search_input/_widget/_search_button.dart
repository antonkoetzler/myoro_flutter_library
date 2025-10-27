part of '../widget/myoro_search_input.dart';

/// Search button of the [MyoroSearchInput].
final class _SearchButton<T> extends StatelessWidget {
  const _SearchButton();

  @override
  Widget build(context) {
    return MyoroIconTextButton(
      onTapUp: (_) => throw UnimplementedError('Easter egg fuck flutter'),
      iconConfiguration: const MyoroIconConfiguration(icon: Icons.search),
      style: const MyoroIconTextButtonStyle().bordered(context),
    );
  }
}
