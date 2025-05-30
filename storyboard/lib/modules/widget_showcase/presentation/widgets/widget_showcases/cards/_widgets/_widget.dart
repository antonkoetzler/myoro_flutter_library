part of '../myoro_card_widget_showcase.dart';

/// [MyoroCard] of [MyoroCardWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCardWidgetShowcaseViewModel>();
    final themeExtension = context.read<MyoroCardWidgetShowcaseThemeExtension>();

    return ListenableBuilder(
      listenable: viewModel,
      builder: (_, __) {
        return MyoroCard(
          configuration: MyoroCardConfiguration(
            title: viewModel.title,
            titleTextStyle: viewModel.titleTextStyle,
            padding: viewModel.padding,
            constraints: viewModel.constraints,
            child: Center(child: Text('This is a MyoroCard!', style: themeExtension.textStyle)),
          ),
        );
      },
    );
  }
}
