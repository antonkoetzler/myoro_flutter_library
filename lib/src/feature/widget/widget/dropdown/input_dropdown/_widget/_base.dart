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
      MyoroDropdownViewModel<
        T,
        MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
        MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>
      >
    >
  >
>
    extends StatelessWidget {
  const _Base(this.viewModel);

  /// Configuration.
  final VIEW_MODEL viewModel;

  @override
  Widget build(context) {
    final state = viewModel.state;
    final dropdownController = state.dropdownController;
    final showingController = dropdownController.showingController;
    final toggleDropdown = viewModel.toggleDropdown;
    final inputController = state.inputController;
    final dropdownConfiguration = dropdownController.configuration;
    final dropdownType = dropdownConfiguration.dropdownType;

    final inputThemeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final outlinedBorder = inputThemeExtension.outlinedBorder;
    final menuActiveInputBorderRadius = outlinedBorder?.copyWith(
      borderRadius: outlinedBorder.borderRadius.copyWith(
        bottomLeft: Radius.zero,
        bottomRight: Radius.zero,
      ),
    );

    return viewModel.buildDropdownWidget(
      ValueListenableBuilder(
        valueListenable: showingController,
        builder: (_, showing, _) {
          final inputBorder = switch (dropdownType) {
            MyoroDropdownTypeEnum.overlay => showing ? menuActiveInputBorderRadius : null,
            MyoroDropdownTypeEnum.expanding => showing ? menuActiveInputBorderRadius : null,
            MyoroDropdownTypeEnum.modal => null,
            MyoroDropdownTypeEnum.bottomSheet => null,
          };

          return MyoroInput(
            key: state.dropdownController.configuration.targetKey,
            configuration: MyoroInputConfiguration(
              // This is to disable the [BoxBorder] lerp animation when we need to alter the bottom corners of this
              // [MyoroInput] when the dropdown is opened when menuTypeEnum is [MyoroDropdownTypeEnum.expanding].
              inputKey: ValueKey(inputBorder),
              readOnly: true,
              onTap: toggleDropdown,
              controller: inputController,
            ),
            style: MyoroInputStyle(border: inputBorder),
          );
        },
      ),
    );
  }
}
