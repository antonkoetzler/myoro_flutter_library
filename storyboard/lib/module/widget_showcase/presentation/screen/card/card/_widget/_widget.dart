part of '../myoro_card_widget_showcase_screen.dart';

/// [MyoroCard] of [MyoroCardWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCardWidgetShowcaseScreenThemeExtension>();
    final viewModel = context.read<MyoroCardWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        final state = viewModel.state;
        final title = state.title;

        return MyoroCard(
          title: title,
          style: viewModel.buildStyle(context),
          child: Center(child: Text('This is a MyoroCard!', style: themeExtension.textStyle)),
        );
      },
    );
  }
}
