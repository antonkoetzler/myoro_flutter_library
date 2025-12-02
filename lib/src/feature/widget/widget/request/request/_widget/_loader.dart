part of '../widget/myoro_request_widget.dart';

/// Loader of [MyoroRequestWidget].
final class _Loader extends StatelessWidget {
  /// Default constructor.
  const _Loader();

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroRequestWidgetThemeExtension>();
    final style = context.watch<MyoroRequestWidgetStyle>();
    final loaderPadding = style.loaderPadding ?? themeExtension.loaderPadding ?? EdgeInsets.zero;
    return Center(
      child: Padding(padding: loaderPadding, child: const MyoroCircularLoader()),
    );
  }
}
