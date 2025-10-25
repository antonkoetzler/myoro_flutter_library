part of '../bundle/myoro_input_dropdown_bundle.dart';

/// Base implementation of an input dropdown.
final class _Base<
  T,
  VIEW_MODEL extends MyoroInputDropdownViewModel<
    T,
    MyoroInputDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
    MyoroDropdownController<
      T,
      MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
      MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>,
      MyoroDropdownViewModel<
        T,
        MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
        MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>
      >
    >
  >
>
    extends StatelessWidget {
  const _Base(this.viewModel, this._style, this._prefix, this._inputSuffix, this._numberInputConfiguration);

  /// Configuration.
  final VIEW_MODEL viewModel;

  /// Style.
  final MyoroInputDropdownStyle _style;

  /// Prefix [Widget].
  final Widget? _prefix;

  /// Suffix [Widget].
  final Widget? _inputSuffix;

  /// Number input configuration.
  final MyoroSingleInputDropdownNumberInputConfiguration? _numberInputConfiguration;

  @override
  Widget build(context) {
    final state = viewModel.state;
    final dropdownController = state.dropdownController;
    final showingController = dropdownController.showingController;
    final inputController = state.inputController;
    final dropdownConfiguration = dropdownController.configuration;
    final dropdownType = dropdownConfiguration.dropdownType;
    final configuration = state.configuration;
    final label = configuration.label;
    final onFieldSubmitted = configuration.toggleDropdownOnFieldSubmitted
        ? (_) => dropdownController.toggleDropdown()
        : null;
    final toggleDropdownOnInputTap = configuration.toggleDropdownOnInputTap ? dropdownController.toggleDropdown : null;
    final enabledController = state.enabledController;
    final checkboxOnChanged = configuration.checkboxOnChanged;
    final inputThemeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final outlinedBorder = inputThemeExtension.outlinedBorder;
    final menuActiveInputBorderRadius = outlinedBorder?.copyWith(
      borderRadius: outlinedBorder.borderRadius.copyWith(bottomLeft: Radius.zero, bottomRight: Radius.zero),
    );

    return InheritedProvider.value(
      value: _style,
      child: Builder(
        builder: (context) => viewModel.buildDropdownWidget(
          context,
          ValueListenableBuilder(
            valueListenable: showingController,
            builder: (_, showing, _) {
              final inputBorder = switch (dropdownType) {
                MyoroDropdownTypeEnum.overlay => showing ? menuActiveInputBorderRadius : null,
                MyoroDropdownTypeEnum.expanding => showing ? menuActiveInputBorderRadius : null,
                MyoroDropdownTypeEnum.modal => null,
                MyoroDropdownTypeEnum.bottomSheet => null,
              };

              return ValueListenableBuilder(
                valueListenable: enabledController,
                builder: (_, enabled, _) => _numberInputConfiguration != null
                    ? MyoroNumberInput(
                        style: MyoroCurrencyInputStyle(border: inputBorder),
                        min: _numberInputConfiguration.min,
                        max: _numberInputConfiguration.max,
                        decimalPlaces: _numberInputConfiguration.decimalPlaces,
                        inputKey: state.dropdownController.configuration.targetKey,
                        readOnly: toggleDropdownOnInputTap != null,
                        prefix: _prefix,
                        onTap: toggleDropdownOnInputTap,
                        inputController: inputController,
                        onFieldSubmitted: onFieldSubmitted,
                        suffix: _inputSuffix,
                        label: label,
                        enabled: enabled,
                        checkboxOnChanged: checkboxOnChanged,
                      )
                    : MyoroInput(
                        style: MyoroInputStyle(border: inputBorder),
                        // This is to disable the [BoxBorder] lerp animation when we need to alter the bottom corners of this
                        // [MyoroInput] when the dropdown is opened when menuTypeEnum is [MyoroDropdownTypeEnum.expanding].
                        // inputKey: ValueKey(inputBorder),
                        inputKey: state.dropdownController.configuration.targetKey,
                        readOnly: toggleDropdownOnInputTap != null,
                        prefix: _prefix,
                        onTap: toggleDropdownOnInputTap,
                        inputController: inputController,
                        onFieldSubmitted: onFieldSubmitted,
                        suffix: _inputSuffix,
                        label: label,
                        enabled: enabled,
                        checkboxOnChanged: checkboxOnChanged,
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}
