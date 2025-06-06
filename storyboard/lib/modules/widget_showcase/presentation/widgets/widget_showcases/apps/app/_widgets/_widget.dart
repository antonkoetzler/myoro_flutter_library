part of '../myoro_app_widget_showcase.dart';

/// [WidgetShowcase.widget] of [MyoroAppWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroAppWidgetShowcaseViewModel>();

    return ListenableBuilder(
      listenable: viewModel,
      builder: (_, __) {
        return MyoroApp(
          configuration: MyoroAppConfiguration(
            themeMode: viewModel.themeMode,
            home: MyoroScreen(
              configuration: MyoroScreenConfiguration(
                appBar: MyoroAppBar(
                  configuration: MyoroAppBarConfiguration(
                    bordered: true,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text(faker.lorem.word()), Icon(myoroFake<IconData>())],
                    ),
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
