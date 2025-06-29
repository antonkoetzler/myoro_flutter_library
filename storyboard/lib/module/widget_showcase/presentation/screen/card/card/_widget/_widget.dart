part of '../myoro_card_widget_showcase_screen.dart';

/// [MyoroCard] of [MyoroCardWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroCardWidgetShowcaseScreenThemeExtension>();
    final viewModel = context.read<MyoroCardWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return MyoroCard(
          configuration: viewModel.configuration(
            Center(child: Text('This is a MyoroCard!', style: themeExtension.textStyle)),
          ),
        );
      },
    );
  }
}
