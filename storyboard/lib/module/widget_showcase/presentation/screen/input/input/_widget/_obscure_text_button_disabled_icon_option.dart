part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputThemeExtension.obscureTextButtonDisabledIcon] option of [MyoroInputWidgetShowcaseScreen].
final class _ObscureTextButtonDisabledIconOption extends StatelessWidget {
  const _ObscureTextButtonDisabledIconOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return IconWidgetShowcaseOption(
      configuration: IconWidgetShowcaseOptionConfiguration(
        label: 'Obscure text button disabled icon',
        selectedIcon: viewModel.state.obscureTextButtonDisabledIcon,
        iconOnChanged: (icon) => viewModel.state.obscureTextButtonDisabledIcon = icon,
      ),
    );
  }
}
