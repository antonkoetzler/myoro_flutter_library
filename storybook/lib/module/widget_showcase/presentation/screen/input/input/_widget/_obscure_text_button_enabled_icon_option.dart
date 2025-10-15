part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputThemeExtension.obscureTextButtonEnabledIcon] option of [MyoroInputWidgetShowcaseScreen].
final class _ObscureTextButtonEnabledIconOption extends StatelessWidget {
  const _ObscureTextButtonEnabledIconOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return IconWidgetShowcaseOption(
      configuration: IconWidgetShowcaseOptionConfiguration(
        label: 'Obscure text button enabled icon',
        selectedIcon: viewModel.state.obscureTextButtonEnabledIcon,
        iconOnChanged: (icon) => viewModel.state.obscureTextButtonEnabledIcon = icon,
      ),
    );
  }
}
