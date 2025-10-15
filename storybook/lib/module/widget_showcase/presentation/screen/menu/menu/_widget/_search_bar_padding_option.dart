part of '../myoro_menus_widget_showcase_screen.dart';

/// [MyoroMenuThemeExtension.searchBarPadding] option of [MyoroMenusWidgetShowcaseScreen].
final class _SearchBarPaddingOption extends StatelessWidget {
  const _SearchBarPaddingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenusWidgetShowcaseScreenViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        label: 'Search bar padding',
        paddingOnChanged: (padding) => viewModel.state.searchBarPadding = padding,
      ),
    );
  }
}
