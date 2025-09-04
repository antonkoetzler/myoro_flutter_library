part of '../myoro_icon_text_button.dart';

/// Text of the [MyoroIconTextButton].
final class _Text extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;

  const _Text(this._tapStatusEnum);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();

    final viewModel = context.read<MyoroIconTextButtonViewModel>();
    final configuration = viewModel.configuration;
    final style = viewModel.style;
    final textConfiguration = configuration.textConfiguration!;
    final text = textConfiguration.text;
    final maxLines = textConfiguration.maxLines;
    final overflow = textConfiguration.overflow;
    final alignment = textConfiguration.alignment;

    final textStyle = textConfiguration.style ?? themeExtension.textStyle;
    final contentColor =
        style.contentColorBuilder?.call(_tapStatusEnum) ?? themeExtension.contentColorBuilder(_tapStatusEnum);

    return Expanded(
      child: Text(
        text,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: alignment,
        style: contentColor != null ? textStyle?.withColor(contentColor) : textStyle,
      ),
    );
  }
}
