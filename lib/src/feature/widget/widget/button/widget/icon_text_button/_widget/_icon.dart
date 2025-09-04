part of '../myoro_icon_text_button.dart';

/// Icon of a [MyoroIconTextButton].
final class _Icon extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;

  const _Icon(this._tapStatusEnum);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();

    final viewModel = context.read<MyoroIconTextButtonViewModel>();
    final configuration = viewModel.configuration;
    final iconConfiguration = configuration.iconConfiguration;
    final style = viewModel.style;

    final contentColorBuilder = style.contentColorBuilder ?? themeExtension.contentColorBuilder;

    assert(iconConfiguration != null, '[_Icon]: [iconConfiguration] cannot be null.');

    return Icon(iconConfiguration!.icon, size: iconConfiguration.size, color: contentColorBuilder(_tapStatusEnum));
  }
}
