part of '../myoro_input.dart';

/// Wrapper for the [ValueListenableBuilder] in [_MyoroInputState].
final class _Wrapper extends StatelessWidget {
  const _Wrapper();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final style = context.read<MyoroInputStyle>();
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;

    final viewModel = context.read<MyoroInputViewModel>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final inputKey = configuration.inputKey;
    final checkboxOnChanged = configuration.checkboxOnChanged;
    final suffix = configuration.suffix;

    return Row(
      spacing: spacing,
      children: [
        if (checkboxOnChanged != null) const _Checkbox(),
        Expanded(key: inputKey, child: const _TextFormField()),
        if (suffix != null) suffix,
      ],
    );
  }
}
