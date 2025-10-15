part of '../myoro_menus_widget_showcase_screen.dart';

/// [MyoroMenuThemeExtension.dialogTextLoaderPadding] option of [MyoroMenusWidgetShowcaseScreen].
final class _DialogTextLoaderPaddingOption extends StatelessWidget {
  const _DialogTextLoaderPaddingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenusWidgetShowcaseScreenViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        label: 'Dialog text loader padding',
        paddingOnChanged: (padding) => viewModel.state.dialogTextLoaderPadding = padding,
      ),
    );
  }
}
