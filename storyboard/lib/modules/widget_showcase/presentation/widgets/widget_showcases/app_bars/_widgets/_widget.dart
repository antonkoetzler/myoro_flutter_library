part of '../myoro_app_bar_widget_showcase.dart';

/// [WidgetShowcase.widget] of [MyoroAppbarWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroAppBarWidgetShowcaseViewModel>();

    return ListenableBuilder(
      listenable: viewModel,
      builder: (_, __) {
        return MyoroAppBar(
          configuration: MyoroAppBarConfiguration(
            bordered: viewModel.bordered,
            backgroundColor: viewModel.backgroundColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(faker.lorem.word()), Icon(myoroFake<IconData>())],
            ),
          ),
        );
      },
    );
  }
}
