part of '../myoro_app_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroAppWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAppWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return MyoroApp(
          configuration: viewModel.buildConfiguration(
            MyoroScreen(
              configuration: MyoroScreenConfiguration(
                appBar: MyoroAppBar(
                  showBottomDivider: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text(faker.lorem.word()), Icon(myoroFake<IconData>())],
                  ),
                ),
                body: Center(child: Text(faker.lorem.word())),
              ),
            ),
          ),
        );
      },
    );
  }
}
