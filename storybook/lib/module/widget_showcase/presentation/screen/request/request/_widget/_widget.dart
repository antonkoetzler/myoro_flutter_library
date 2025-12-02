part of '../myoro_request_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroRequestWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroRequestWidgetShowcaseScreenViewModel>();

    return MyoroRequestWidget<String>(
      request: viewModel.request,
      onSuccess: viewModel.onSuccess,
      onError: viewModel.onError,
      successBuilder: (context, data) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.check_circle, color: Colors.green, size: 48),
              const SizedBox(height: 16),
              Text('Request completed successfully!', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 8),
              Text('Data: $data', style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        );
      },
    );
  }
}
