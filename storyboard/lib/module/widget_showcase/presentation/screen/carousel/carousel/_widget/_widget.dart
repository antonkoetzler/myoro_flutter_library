part of '../myoro_carousel_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroCarouselWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCarouselWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return MyoroSingleThemeExtensionWrapper(
          themeExtension: viewModel.buildThemeExtension(context),
          child: MyoroCarousel(
            configuration: viewModel.buildConfiguration(const [
              _CarouselItem(kAreYouSillyCat),
              _CarouselItem(kHappyCat),
              _CarouselItem(kSnazzyCat),
            ]),
          ),
        );
      },
    );
  }
}
