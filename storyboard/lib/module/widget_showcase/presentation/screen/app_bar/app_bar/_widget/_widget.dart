part of '../myoro_app_bar_widget_showcase_screen.dart';

/// [WidgetShowcaseScreen.widget] of [MyoroAppbarWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAppBarWidgetShowcaseScreenViewModel>();
    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return MyoroAppBar(
          configuration: viewModel.configuration(
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(faker.lorem.word()), Icon(myoroFake<IconData>())],
            ),
          ),
        );
      },
    );
  }
}
