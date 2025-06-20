part of '../myoro_form_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroFormWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroFormWidgetShowcaseScreenViewModel>();
    final widgetShowcaseOptionThemeExtension = context.resolveThemeExtension<WidgetShowcaseOptionThemeExtension>();

    return MyoroForm<String>(
      configuration: MyoroFormConfiguration(
        request: viewModel.request,
        validation: viewModel.validation,
        onSuccess: (result) => viewModel.onSuccess(context, result),
        onError: (errorMessage) => viewModel.onError(context, errorMessage),
      ),
      builder: (request, formController) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          spacing: widgetShowcaseOptionThemeExtension.spacing,
          children: [
            Text(
              'Type "Kitty" to successfully complete the form.',
              textAlign: TextAlign.center,
              style: widgetShowcaseOptionThemeExtension.labelTextStyle,
            ),
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: widgetShowcaseOptionThemeExtension.spacing,
                children: [const Flexible(child: _Input()), IntrinsicWidth(child: _SubmitButton(formController))],
              ),
            ),
            if (request.status.isSuccess) const _Kitty(),
          ],
        );
      },
    );
  }
}
